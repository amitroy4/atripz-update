@extends('layouts.home')
@section('title', 'Checkout')
@section('main')
<div>
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <div class="title-content">
                        <h2>Checkout</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><span>Checkout</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Checkout -->
    <div class="checkout-area">
        <div class="container">
            @if($errors->any())
            <div class="alert alert-danger mb-4">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            <div class="row">
                @auth('customer')
                    @php
                    $user = Auth::guard('customer')->user();
                    $fullName = $user->customer->firstName . ' ' . $user->customer->lastName;
                    @endphp

                    {{-- <a href="{{route('customer.dashboard')}}">{{ $fullName }}</a> --}}

                    {{-- <form method="post" action="{{ route('customer.logout') }}">
                        @csrf
                        <button type="submit">Logout</button>
                    </form> --}}
                @else
                <div class="col-lg-6 mb-sm-15 mb-3">
                    <div class="toggle_info">
                        <span><i class="fi-rs-user mr-10"></i><span class="">Already have an account?</span> <a
                                href="#loginform" data-bs-toggle="collapse" class="collapsed"
                                aria-expanded="false">Click here to login</a></span>
                    </div>
                    <div class="panel-collapse collapse login_form" id="loginform">
                        <div class="panel-body">
                            <p class="mb-30 font-sm">If you have shopped with us before, please enter your details
                                below. If you are a new customer, please proceed to the Billing &amp; Shipping
                                section.</p>
                            <form method="post" action="{{route('checkout.login')}}">
                                @csrf
                                @method('POST')
                                <div class="form-group">
                                    <input placeholder="Email or Phone Number" class="form-control" id="login_identifier" type="text" name="login_identifier" :value="old('login_identifier')" required autofocus autocomplete="login_identifier">
                                </div>
                                <div class="form-group">
                                    <input placeholder="Password" type="password" class="form-control"
                                    name="password" required autocomplete="current-password" id="password" >
                                </div>
                                <div class="login_footer form-group">
                                    <div class="chek-form">
                                        <div class="custome-checkbox">
                                            <input class="form-check-input" type="checkbox" name="remember" class="form-control"
                                                id="remember" value="">
                                            <label class="form-check-label" for="remember"><span>Remember
                                                    me</span></label>
                                        </div>
                                    </div>
                                    {{-- <a href="#" class="chek-form-a">Forgot password?</a> --}}
                                </div>
                                <div class="form-group">
                                    <button class="btn common-btn place-order-btn" name="submit" type="submit">Log in</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                @endauth

                <div class="col-lg-6">
                    <div class="toggle_info">
                        <span><i class="fi-rs-label mr-10"></i><span class="">Have a coupon?</span> <a
                                href="#coupon" data-bs-toggle="collapse" class="collapsed"
                                aria-expanded="false">Click here to enter your Coupon code</a></span>
                    </div>
                    <div class="panel-collapse collapse login_form " id="coupon">
                        <div class="panel-body">
                            <p class="mb-30 font-sm">If you have a coupon code, please apply it below.</p>
                            <form id="coupne_form">

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter Coupon Code..." id="coupne" name="coupne">
                                </div>
                                <div class="form-group">
                                    <button class="btn  common-btn place-order-btn" name="login" type="submit">Apply Coupon</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="my-5"></div>
                </div>
            </div>
            <form method="post" action="{{route('order.store')}}" novalidate>
                @csrf
                @method('POST')
                <div class="row">
                    <div class="col-lg-7">
                        <div class="checkout-billing">
                            <div class="card">
                                <div class="card-header bg-white">
                                    <h2>Billing Details</h2>
                                </div>
                                <div class="card-body">

                                    <div class="row form-group">
                                    @auth('customer')
                                    @php
                                    $user = Auth::guard('customer')->user();
                                    $fullName = $user->customer->firstName . ' ' . $user->customer->lastName;
                                    // Retrieve shipping details using the relationship
                                    $shippingAddress = $user->customer->shipping->first(); // Assuming you have a one-to-many relationship

                                    // If you have multiple shipping addresses and want to get the first one, you can use:
                                    // $shippingAddress = $user->customer->shipping->first();
                                    @endphp

                                        <p><strong>Name:</strong> {{$fullName}}</p>
                                        <p><strong>Phone:</strong> {{$user->customer->phone}}</p>
                                        <p><strong>Email:</strong> {{$user->customer->email}}</p>

                                        @if($user->customer->billing_address == null)
                                        <p><strong>Billing Address:</strong>  <span class="text-danger">You don't have any address.</span></p>

                                        @else
                                        <p><strong>Billing Address:</strong> {{$user->customer->billing_address}}</p>
                                        @endif

                                        @if($shippingAddress)
                                        <div class="mt-25 mb-2">
                                            <h4>Default Shipping Details</h4>
                                        </div>

                                        <p ><strong>Name:</strong> {{$shippingAddress->first_name}} {{$shippingAddress->last_name}}</p>
                                        <p><strong>Phone:</strong> {{$shippingAddress->s_phone}}</p>
                                        <p><strong>Email:</strong> {{$shippingAddress->s_email}}</p>
                                        <p><strong>Shipping Address:</strong> {{$shippingAddress->shipping_add}}</p>
                                        {{-- <p><strong>Shipping cost:</strong> ৳{{$shippingAddress->zone->zone_charge}}</p> --}}

                                        @endif
                                    @else
                                        <div class="form-group col-lg-6">
                                            <label for="" class="form-label">First Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" id="" class="form-control" name="fname"
                                                placeholder="Enter First Name" required>
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label for="" class="form-label">Last Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" id="" class="form-control" name="lname"
                                                placeholder="Enter Last Name" required>
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label for="phone" class="form-label">Phone: <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" id="phone" class="form-control" name="phone"
                                                placeholder="Phone Number" required>
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label for="email" class="form-label">Email:</label>
                                            <input type="email" id="email" class="form-control" name="email"
                                                placeholder="Email Address">
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <label for="address" class="form-label">Billing Address: <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" id="address" class="form-control" name="billing_address"
                                                placeholder="Address" required>
                                        </div>
                                        {{-- <div class="form-group col-lg-6">
                                            <label for="district" class="form-label">District:</label>
                                            <input type="text" id="district" class="form-control" name="district"
                                                placeholder="District">
                                        </div>
                                        <div class="form-group col-lg-6">
                                            <label for="area" class="form-label">Postal Code:</label>
                                            <input type="text" id="area" class="form-control" name="area"
                                                placeholder="Postal Code">
                                        </div> --}}
                                        @livewire('billing-area-component')
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <div class="custome-checkbox">
                                                        <input class="form-check-input" type="checkbox" name="is_createaccount"
                                                            id="createaccount">
                                                        <label class="form-check-label label_info" data-bs-toggle="collapse"
                                                            href="#collapsePassword" data-target="#collapsePassword"
                                                            aria-controls="collapsePassword" for="createaccount"><span>Create an account?</span></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="collapsePassword" class="checkout-account collapse in">
                                                <div class="row form-group">
                                                    <label for="" class="mb-2"><span>* </span>Use your billing email or phone to sign in.</label>
                                                    <div class="col-lg-6 mb-4">
                                                        <input type="password" class="form-control"
                                                            placeholder="Password" name="password">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="password" class="form-control"
                                                            placeholder="Confirm Password" name="c_password">
                                                    </div>
                                                    {{-- <div class="col-lg-6 mt-3">
                                                        <a href="#" class="btn "> <i class="fi-rs-box-alt mr-10"></i> Create
                                                            Account</a>
                                                    </div> --}}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <div class="checkbox">
                                                {{-- <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> --}}
                                                <input class="form-check-input" type="checkbox" value="" name="is_shipping"
                                                    id="flexCheckDefault" wire:model="shipToDifferentAddress">

                                                <label class="form-check-label" for="flexCheckDefault">
                                                    Ship to a different address
                                                </label>
                                            </div>
                                        </div>

                                        <!-- Shipping Details (Initially Hidden) -->
                                        <div class="checkout-shipping form-group col-lg-12" style="display: none;">
                                            {{-- <div class="card-header bg-white"> --}}
                                                <h2>Shipping Details</h2><hr>
                                            {{-- </div> --}}
                                            {{-- <div class="card-body"> --}}
                                                <div class="row">
                                                    <div class="form-group col-lg-6">
                                                        <label for="" class="form-label">First Name <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" id="" class="form-control" name="shipper_fname"
                                                            placeholder="Enter First Name" required>
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <label for="" class="form-label">Last Name <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" id="" class="form-control" name="shipper_lname"
                                                            placeholder="Enter Last Name" required>
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <label for="phone" class="form-label">Phone: <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" id="phone" class="form-control" name="shipper_phone"
                                                            placeholder="Phone Number" required>
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <label for="email" class="form-label">Email:</label>
                                                        <input type="email" id="email" class="form-control" name="shipper_email"
                                                            placeholder="Email Address">
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <label for="address" class="form-label">Shipping Address: <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" id="address" class="form-control" name="shipper_address"
                                                            placeholder="Address" required>
                                                    </div>
                                                    {{-- <div class="form-group col-lg-6">
                                                        <label for="district" class="form-label">District:</label>
                                                        <input type="text" id="s_district" class="form-control" name="s_district"
                                                            placeholder="District">
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <label for="postalCode" class="form-label">Postal Code:</label>
                                                        <input type="text" id="s_area" class="form-control" name="s_area"
                                                            placeholder="Postal Code">
                                                    </div> --}}
                                                    @livewire('area-select-component')
                                                </div>
                                            {{-- </div> --}}
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <label for="yourNotes" class="form-label">Additional Information
                                                (Optional):</label>
                                            <textarea id="yourNotes" rows="4" class="form-control" name="comment" placeholder="Order notes"></textarea>
                                        </div>
                                    @endauth
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Order Summary and Payment Method -->
                    <div class="col-lg-5">
                        <div class="card">
                            <div class="card-header bg-white">
                                <h3 class="order-title">Your Order</h3>
                            </div>

                            @auth('customer')

                            {{-- @livewire('checkout-component', ['delivery_charge' => $shippingAddress->zone->zone_charge], key($shippingAddress->zone->zone_charge)) --}}
                            @livewire('checkout-component', ['deliveryCharge' => $shippingAddress->zone->zone_charge], key($shippingAddress->zone->zone_charge))

                            @else
                            @livewire('checkout-component', ['deliveryCharge'])

                            @endif
                            <div class="card-header bg-white">
                                <h3 class="order-title text-start">Payment Method</h3>
                            </div>
                            <div class="card-body payment-method">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="payment_mode" id="payment_cod" checked value="cod">
                                    <label class="form-check-label" for="exampleRadios2">
                                        Cash On Delivery
                                    </label>
                                </div>
                                <div class="form-check two">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                                    <label class="form-check-label" for="flexCheckDefault2">
                                        I've read and accept <a href="terms-conditions.html">terms & conditions*</a>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn common-btn place-order-btn">
                                        <i class='bx bxl-shopify'></i> Place Order
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    const shipToDifferentAddressCheckbox = document.getElementById('flexCheckDefault');
    const shippingDetailsForm = document.querySelector('.checkout-shipping');

    shipToDifferentAddressCheckbox.addEventListener('change', function () {
        if (this.checked) {
            shippingDetailsForm.style.display = 'block';
        } else {
            shippingDetailsForm.style.display = 'none';
        }
    });
    // account
    const createaccountCheckbox = document.getElementById('createaccount');
    const createaccountForm = document.querySelector('.checkout-account');

    createaccountCheckbox.addEventListener('change', function () {
        if (this.checked) {
            createaccountForm.style.display = 'block';
        } else {
            createaccountForm.style.display = 'none';
        }
    });

</script>
<script>
    // Clear the previous ecommerce object
    dataLayer.push({ ecommerce: null });

    // Push new ecommerce data to dataLayer for beginning checkout
    dataLayer.push({
        event: "begin_checkout",
        ecommerce: {
            currency: "INR",
            items: [@foreach (Cart::content() as $product)
                {
                    item_id: "{{ $product->id }}", // Assuming sku is present in your product array
                    item_name: "{{ $product->name }}",
                    item_brand: "{{ $product->brand_name ?? "" }}", // Assuming brand_name is present in your product array
                    item_category: "{{ $product->category_name ?? "" }}", // Assuming category_name is present in your product array
                    // Add other item properties as needed
                    price: {{ $product->price }}, // Assuming regular_price is present in your product array
                    index: 0,
                    quantity: {{ $product->qty ?? 0 }},
                },@endforeach
            ]
        }
    });

    // document.getElementById('payment_online').addEventListener('change', function() {
    //     document.getElementById('payment_mode').value = 'online';
    // });

    // document.getElementById('payment_cod').addEventListener('change', function() {
    //     document.getElementById('payment_mode').value = 'cod';
    // });

</script>
@endsection
@push('checkout')
    <script>

$("#coupne_form").submit(function(event) {
        event.preventDefault(); // Prevent form submission
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var couponCode = $('#coupne').val(); // Get coupon code from input
        // console.log(couponCode);
        // Send AJAX request to apply coupon
        $.ajax({
            url: '{{route('applied.coupone')}}',
            method: 'post',
            data: { coupne: couponCode },
            success: function(response) {
                // Handle successful response
                if(response.status == 200){
                    // console.log(response.status);
                    // console.log(response.coupon);

                    if (response.coupon !== undefined) {

                        if (response.coupon.discounts_type == 'percent') {
                            // If discount is less than 0, it's a percentage value
                            var discountValue = parseFloat(response.coupon.percent_value);
                            var subtotal = parseFloat($("input[name='subtotal']").val());
                            var deliveryCharge = parseFloat($("#shipping_cost").val());
                            var discount = subtotal * (discountValue/100); // Calculate discount amount
                            var totalAmount = subtotal + deliveryCharge - discount; // Subtract discount amount from total
                            // console.log(discount);
                        } else {
                            // If discount is greater than or equal to 0, it's a fixed value
                            var discount = parseFloat(response.coupon.fixed);
                            var subtotal = parseFloat($("input[name='subtotal']").val());
                            var deliveryCharge = parseFloat($("#shipping_cost").val());
                            var totalAmount = subtotal + deliveryCharge - discount; // Subtract fixed discount from total
                            // console.log(discount);

                        }
                        // Update discount value display
                        $("#discountValue").text("৳" + discount);
                        $("#discount").val(discount); // Update hidden discount input value
                        $("#coupon_code").val(response.coupon.coupons_code)
                        // Update total amount display
                        $("#totalAmount").text("৳" + totalAmount);
                        $("#t_amount").val(totalAmount); // Update hidden total amount input value

                        $.Notification.autoHideNotify('success', 'top right', 'Success', response.message);

                    } else {
                        $.Notification.autoHideNotify('danger', 'top right', 'Error', response.message);
                        // console.log(response.error);
                    }
                }
                else{
                    $.Notification.autoHideNotify('danger', 'top right', 'Error', response.message);
                    // console.log(response.message);
                }
            },
            error: function(xhr, status, error) {
                // Handle error response
                // alert('Failed to apply coupon. Please try again.');
                $.Notification.autoHideNotify('danger', 'top right', 'Error', response.message);
                // location.reload();
            }
        });
    });
    </script>
@endpush
