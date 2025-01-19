<?php

namespace App\Http\Controllers\Frontend;

// use DB;
use App\Models\Size;
use App\Models\Color;
use App\Models\Order;
use App\Models\Coupon;
use App\Mail\AdminMail;
use App\Models\Customer;
use App\Models\shipping;
use App\Mail\customerMail;
use App\Models\order_items;
use App\Models\Orderstatus;
use App\Models\transactions;
use Illuminate\Http\Request;
use App\Models\Product_stock;
use App\Models\AppliedCoupone;
use Illuminate\Support\Carbon;
use App\Models\Register_customer;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Notification;
use Illuminate\Validation\ValidationException;
use App\Library\SslCommerz\SslCommerzNotification;
use App\Notifications\NewPendingOrderNotification;

class CheckoutController extends Controller
{

    /**
     * Store a newly created resource in storage.
     */

    public function generateCode()
    {
    do {
        // Generate a 4-digit random number
        $randomNumber = str_pad(mt_rand(1, 9999), 4, '0', STR_PAD_LEFT);

        // Get the current year
        $currentYear = date('y');
        // Concatenate the components to create the final code
        $generatedCode = 'GG'.$currentYear.'-'.$randomNumber;
        // Check if the generated code already exists in the database
        $codeExists = DB::table('orders')->where('order_track_id', $generatedCode)->exists();

    } while ($codeExists);

        // Concatenate the components to create the final code

        return $generatedCode;
    }

    public function generateInvoiceNo()
    {

    do {
        // Generate a 2-digit random number
        $randomNumber = str_pad(mt_rand(1, 99), 2, '0', STR_PAD_LEFT);

        // Get the current year
        $currentYear = date('y');
        $currentMonth = date('m');

        // Concatenate the components to create the final code
        $invoiceNo= $currentMonth.$currentYear.$randomNumber;
        // Check if the generated code already exists in the database
        $codeExists = DB::table('orders')->where('invoice_no', $invoiceNo)->exists();

    } while ($codeExists);

        // Concatenate the components to create the final code

        return $invoiceNo;
    }

    public function store(Request $request)
    {

        // $cartItems = Cart::instance('cart')->content();
        // return $cartItems;
        $track_id = $this->generateCode();
        $invoiceNo = $this->generateInvoiceNo();
        $purchaseEventData = [];
        DB::beginTransaction();
        try {
            if (Auth::guard('customer')->check()) {

                $user = Auth::guard('customer')->user();
                $customer_id = $user->customer->id;
                $couponCode = $request->input('coupon_code');

                $order = new Order;
                $order->customer_id = $customer_id;
                $order->invoice_no = $invoiceNo;
                $order->order_track_id = $track_id;
                $order->subtotal = $request->subtotal;
                $order->discount = $request->discount;
                $order->tax = $request->tax;
                $order->total = $request->total_amount;
                $order->total_due = $request->total_amount;
                $order->delivery_charge = $request->shipping_cost;
                $order->is_shipping_different = $request->is_shipping ? 1 : 0;
                $order->comment = $request->comment;
                $order->save();
                // dd($order);
                $order_status = Orderstatus::create([
                    'order_id' => $order->id,
                ]);
                    $purchaseEventData['transaction_id'] = $invoiceNo; // actual transaction ID
                    $purchaseEventData['value'] = $request->total_amount; // Total amount of the transaction
                    $purchaseEventData['tax'] = $request->tax; // Tax amount
                    $purchaseEventData['shipping'] = $request->shipping_cost; // Shipping cost
                    $purchaseEventData['currency'] = "INR"; // Currency
                    $purchaseEventData['coupon'] = $request->input('coupon_code') ?? ""; // Coupon code
                    $purchaseEventData['items'] = [];

                $cartItems = Cart::instance('cart')->content();
                // return $cartItems;
                foreach ($cartItems as $cartItem) {
                    $color = Color::where('color_name', $cartItem->options->color)->first();
                    $size = Size::where('size', $cartItem->options->size)->first();
                    // return $size;
                    // $tempFilePath = $cartItem->options->prescription_image;

                    // if($tempFilePath){
                    //     $permanentPath = "prescription/".basename($tempFilePath);
                    // }
                    // else{
                    //     $permanentPath = null;
                    // }
                    // return $size->id;
                    order_items::create([
                        'product_id' => $cartItem->id,
                        'order_id' => $order->id,
                        'color_id' => $color->id,
                        'size_id' => $size->id,
                        'price' => $cartItem->price,
                        'quantity' => $cartItem->qty,
                        // 'eyeweartype' => $cartItem->options->selected_eyewear,
                        // 'lens_type' => $cartItem->options->lens_type,
                        // 'prescription_note' => $cartItem->options->prescription_note,
                        // 'prescription_image' => $permanentPath,
                        // 'lens_price' => $cartItem->options->lens_price,
                        // 'item_price_withlens' => $cartItem->options->final_amount,

                    ]);

                    $item = [
                        'item_id' => $cartItem->id,
                        'item_name' => $cartItem->name,
                        'price' => $cartItem->price,
                        'quantity' => $cartItem->qty,
                    ];
                    $purchaseEventData['items'][] = $item;
                    // if($cartItem->options->selected_eyewear == 'ChoosePowerLens'){
                    //     if($tempFilePath){
                    //     Storage::disk('public')->move($tempFilePath, $permanentPath);
                    //     Storage::disk('public')->delete($tempFilePath);
                    //     session()->forget('temp_file_path');
                    //     }
                    // }
                }

                $transaction = transactions::create([
                    'customer_id' => $customer_id,
                    'order_id' => $order->id,
                    'mode' => $request->payment_mode,
                ]);

                if($couponCode){
                    $appliedCoupon = AppliedCoupone::where('customer_id', $customer_id)
                                                    ->where('coupone_code', $couponCode)
                                                    ->first();
                        if ($appliedCoupon) {
                        $appliedCoupon->update([
                            'order_id' => $order->id,
                            'is_ordered' => 1,
                        ]);
                    }
                }

                $customer = Customer::find($customer_id);
                $order->notify(new NewPendingOrderNotification($order));

                Session::flash('warning','Check your order in dashboard.');
                Mail::to($customer->email)->send( new customerMail($order));

            }
            else{
                $rules = [
                    'fname' => 'required|string',
                    'lname' => 'required|string',
                    'phone' => 'required|string',
                    'email' => 'required|email',
                    'billing_address' => 'required|string',
                    'division' => 'required',
                    'district' => 'required',
                    'area' => 'required',
                    // 'password' => 'min:6',
                ];
                $customMessages = [
                    'fname.required' => 'Please fill up first name field.',
                    'lname.required' => 'Please fill up last name field.',
                    'phone.required' => 'Please fill up phone field .',
                    'email.required' => 'Please fill up email field.',
                    'billing_address.required' => 'Please fill up billing address field.',
                    'division.required' => 'Please fill up division field.',
                    'district.required' => 'Please fill up district field.',
                    'area.required' => 'Please fill up area field.',
                ];

                $validator = Validator::make($request->all(), $rules, $customMessages);

                if ($validator->fails()) {

                    // Session::flash('danger', $validator->messages()->toArray());
                    return redirect()->back()->withErrors($validator)->withInput();
                }
                else{

                    // save new customer.
                    // Check if customer with the given email or phone already exists
                    $existingCustomer = Customer::where('email', $request->email)
                    ->orWhere('phone', $request->phone)
                    ->first();

                    if ($existingCustomer) {
                        // Customer with the same email or phone already exists
                        // You can show a session message or take any other action
                        return redirect()->back()->with('warning', 'The same email or phone already exists. Please login first.');
                    } else {


                        // Customer does not exist, create a new one
                        $customer = new Customer;
                        $customer->firstName  = $request->fname;
                        $customer->lastName = $request->lname;
                        $customer->phone = $request->phone;
                        $customer->email = $request->email;
                        $customer->billing_address = $request->billing_address;
                        $customer->division = $request->division;
                        $customer->district = $request->district;
                        $customer->area = $request->area;
                        $customer->loyalty_point = 10;
                        $customer->save();
                    }

                    $customer_id = $customer->id;
                    $customerPhone = $customer->phone;
                    $customerEmail = $customer->email;

                    // dd($customer);
                    // if new customer registration store.
                    if($request->is_createaccount){
                        $customer_reg = new Register_customer;
                        $customer_reg->customer_id = $customer_id;
                        $customer_reg->phone = $customerPhone;
                        $customer_reg->email = $customerEmail;
                        $customer_reg->password = Hash::make($request->password);
                        $customer_reg->status = 'registerd';
                        $customer_reg->save();
                        // dd($customer_reg);
                        $registration_status = $customer_reg->status;
                        $register_customer = Customer::find($customer_reg->customer_id);
                        $register_customer->update([
                        'status' => $registration_status,
                        ]);

                        Session::flash('warning','Your registration complete successfully, Please login to user dashboard.');
                    }
                    else{
                        $customer_reg = new Register_customer;
                        $customer_reg->customer_id = $customer_id;
                        $customer_reg->phone = $customerPhone;
                        $customer_reg->email = $customerEmail;
                        $customer_reg->password = Hash::make($customerPhone);
                        $customer_reg->status = 'not registerd';
                        $customer_reg->save();
                        $registration_status = $customer_reg->status;
                        // dd($customer_reg);

                        $register_customer = Customer::find($customer_reg->customer_id);
                        $register_customer->update([
                            'status' => $registration_status,
                        ]);

                        Session::flash('warning','Use your Phone number as password to login.');
                    }


                    $order = new Order;
                    $order->customer_id = $customer_id;
                    $order->invoice_no = $invoiceNo;
                    $order->order_track_id = $track_id;
                    $order->subtotal = $request->subtotal;
                    $order->discount = 0;
                    $order->tax = $request->tax;
                    $order->total = $request->total_amount;
                    $order->total_due = $request->total_amount;
                    $order->delivery_charge = $request->shipping_cost;
                    $order->is_shipping_different = $request->is_shipping ? 1 : 0;
                    $order->comment = $request->comment;
                    $order->save();
                    $order_status = Orderstatus::create([
                        'order_id' => $order->id,
                    ]);
                    // dd($order_status);
                    $purchaseEventData['transaction_id'] = $invoiceNo; // actual transaction ID
                    $purchaseEventData['value'] = $request->total_amount; // Total amount of the transaction
                    $purchaseEventData['tax'] = $request->tax; // Tax amount
                    $purchaseEventData['shipping'] = $request->shipping_cost; // Shipping cost
                    $purchaseEventData['currency'] = "INR"; // Currency
                    $purchaseEventData['coupon'] = $request->input('coupon_code') ?? ""; // Coupon code
                    $purchaseEventData['items'] = [];

                    $cartItems = Cart::instance('cart')->content();
                    // return $cartItems;
                    // dd($cartItems);
                    foreach ($cartItems as $cartItem) {

                        // $tempFilePath = $cartItem->options->prescription_image;

                        // if($tempFilePath){
                        //     $permanentPath = "prescription/".basename($tempFilePath);
                        // }
                        // else{
                        //     $permanentPath = null;
                        // }
                        $color = Color::where('color_name', $cartItem->options->color)->first();
                        $size = Size::where('size', $cartItem->options->size)->first();
                        // dd($size);
                        $order_items =order_items::create([
                            'product_id' => $cartItem->id,
                            'order_id' => $order->id,
                            'size_id' => $size->id,
                            'color_id' => $color->id,
                            'price' => $cartItem->price,
                            'quantity' => $cartItem->qty,
                            // 'eyeweartype' => $cartItem->options->selected_eyewear,
                            // 'lens_type' => $cartItem->options->lens_type,
                            // 'prescription_note' => $cartItem->options->prescription_note,
                            // 'prescription_image' => $permanentPath,
                            // 'lens_price' => $cartItem->options->lens_price,
                            // 'item_price_withlens' => $cartItem->options->final_amount,
                        ]);

                        $item = [
                                'item_id' => $cartItem->id,
                                'item_name' => $cartItem->name, // Assuming you have a 'name' property for the item
                                'price' => $cartItem->price,
                                'quantity' => $cartItem->qty,
                            ];

                        // dd($item);
                        $purchaseEventData['items'][] = $item;
                        // if($cartItem->options->selected_eyewear == 'ChoosePowerLens'){
                        //     if($tempFilePath){
                        //     Storage::disk('public')->move($tempFilePath, $permanentPath);
                        //     Storage::disk('public')->delete($tempFilePath);
                        //     session()->forget('temp_file_path');
                        //     }
                        // }
                    }

                    if($request->is_shipping){
                        // shipping addres different from billing address. get shipping data.
                        // $existingCustomer_shipping = shipping::where('customer_id', $customer_id);

                        $shipping_info = new shipping;
                        $shipping_info->customer_id = $customer_id;
                        $shipping_info->order_id = $order->id;
                        $shipping_info->first_name = $request->shipper_fname;
                        $shipping_info->last_name = $request->shipper_lname;
                        $shipping_info->s_phone = $request->shipper_phone;
                        $shipping_info->s_email = $request->shipper_email;
                        $shipping_info->shipping_add = $request->shipper_address;
                        $shipping_info->division = $request->s_division;
                        $shipping_info->district = $request->s_district;
                        $shipping_info->area = $request->s_area;
                        $shipping_info->save();
                    }
                    else{
                        // shipping address and billing address same. billing address save to shipping table.

                            $shipping_info = new shipping;
                            $shipping_info->customer_id = $customer_id;
                            $shipping_info->order_id = $order->id;
                            $shipping_info->first_name = $request->fname;
                            $shipping_info->last_name = $request->lname;
                            $shipping_info->s_phone = $request->phone;
                            $shipping_info->s_email = $request->email;
                            $shipping_info->shipping_add = $request->billing_address;
                            $shipping_info->division = $request->division;
                            $shipping_info->district = $request->district;
                            $shipping_info->area = $request->area;
                            $shipping_info->save();
                    }
                    $transaction = transactions::create([
                        'customer_id' => $customer_id,
                        'order_id' => $order->id,
                        'mode' => $request->payment_mode,
                    ]);

                }

                $order->notify(new NewPendingOrderNotification($order));
                // dd($customer->email);

                Mail::to($customer->email)->send( new customerMail($order));


            }


            DB::commit();

            Cart::instance('cart')->destroy();

            return redirect()->route('thankyou')->with([
                'success' => 'Your order has been placed',
                'purchaseEventData' => $purchaseEventData
            ]);
        } catch (\Exception $e) {
                DB::rollBack();
                Log::error('Error order: ' . $e->getMessage());
                return redirect()->back()->with('danger','Checkout Error '.$e);
            }

    }


    public function login(Request $request)
    {
        $request->validate([
            'login_identifier' => 'required',
            'password' => 'required',
        ]);

        $loginIdentifier = $request->input('login_identifier');

        // Check if the login identifier is an email or phone
        $fieldType = filter_var($loginIdentifier, FILTER_VALIDATE_EMAIL) ? 'email' : 'phone';

        // Attempt to authenticate the customer
        if (Auth::guard('customer')->attempt([$fieldType => $loginIdentifier, 'password' => $request->password])) {

            // Authentication successful
            return redirect()->route('checkout')->with('success','Successfully Login.');
        }

        // Authentication failed
        throw ValidationException::withMessages([
            'danger' => 'Login failed, Try again',
            'login_identifier' => [trans('auth.failed')],
        ]);
    }


    public function appliedCoupone(Request $request)
    {
        $couponCode = $request->input('coupne');

        $timeZone = 'Asia/Dhaka'; // For example, 'Asia/Kolkata'

        // Check if the user is logged in
        if (Auth::guard('customer')->check()) {
            $user = Auth::guard('customer')->user();
            $customerId = $user->customer->id;

            // Check if the customer has previously used the coupon
            $appliedCoupon = AppliedCoupone::where('customer_id', $customerId)
                                            ->where('coupone_code', $couponCode)
                                            ->first();

            if ($appliedCoupon) {
                // Show error message if coupon has already been used by this customer
                Session::flash('success', 'You have already used this coupon.');
                // return redirect()->route('checkout');
                return response()->json(['status' => 402, 'message' => 'You have already used this coupon.']);
            }
            else{
                // Find the coupon with the provided code
                $coupon = Coupon::where('coupons_code', $couponCode)
                                ->where('status', 1) // Check if the coupon is active
                                ->where('quantity', '>', 0) // Check if there are available coupons
                                ->whereDate('end_date', '>=', now()) // Check if the coupon is not expired
                                ->first();
                if ($coupon) {
                    // Reduce coupon quantity
                    $coupon->decrement('quantity');
                    // Store applied coupon in the database
                    AppliedCoupone::create([
                        'customer_id' => $customerId,
                        'coupone_id' => $coupon->id,
                        'coupone_code' => $coupon->coupons_code
                ]);

                    // Show success message
                    // Session::flash('success', 'Coupon applied successfully!');
                    return response()->json(['status' => 200, 'coupon' => $coupon, 'message' => 'Coupon applied successfully!']);
                }
                else {
                    // Show error message if coupon not found or invalid
                    // Session::flash('danger', 'Invalid coupon code or expired!');
                    return response()->json(['status' => 402, 'message' => 'Invalid coupon code or expired.']);
                }
            }

        } else {
            // Show error message if user is not logged in
            // Session::flash('danger', 'Please log in to apply the coupon.');
            // Redirect back to the previous page
            return response()->json(['status' => 402,'message' => 'Please log in to apply the coupon.']);
        }


    }

}
