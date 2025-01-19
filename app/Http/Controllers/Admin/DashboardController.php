<?php

namespace App\Http\Controllers\Admin;

use DB;
use App\Models\Order;
use App\Models\Campaign;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Products;
use App\Models\order_items;
use Illuminate\Http\Request;
use App\Models\Product_stock;
use App\Models\ProductVariant;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Http\Traits\ProductStockTrait;
use App\Models\WebInfo;

class DashboardController extends Controller
{
    use ProductStockTrait;

    public function index()
    {
        $total_orders = Order::count();
        $products = Products::count();
        $category = Category::count();
        $customers = Customer::count();
        $pending_order = Order::where('status','pending')->count();
        $completed_order = Order::where('status','completed')->count();
        $campaign = Campaign::where('status','Published')->count();

        $orders = Order::where('status','pending')->latest()->get();

        $total = Order::where('status','completed')->sum('total');
        $subtotal = Order::where('status','completed')->sum('subtotal') - Order::where('status','completed')->sum('discount');
        $totalDue = Order::where('status', 'completed')->sum('total_due');
        $totalPaid = Order::where('status', 'completed')->sum('total_paid');

        $purchaseStock = ProductVariant::sum('stock');

        $topOrderedProducts = order_items::with('product')
            ->whereHas('order', function ($query) {
                $query->where('status', 'completed');
            })
            ->select('product_id', \DB::raw('SUM(quantity) as total_quantity'))
            ->groupBy('product_id')
            ->orderByDesc('total_quantity')
            ->take(10) // Adjust the number of top products as needed
            ->get();

        $ordered_products = order_items::select('product_id', \DB::raw('SUM(quantity) as total_ordered'))
                    ->groupBy('product_id')
                    ->get();

        // Calculate total puchase
        $totalPurchase = 0;
        $totalInStockBalance = 0;
        $productInStock = 0;

        foreach(Products::all() as $product)
        {
            $product->stock = $this->getProductStock($product->id);

            $inStock = $product->stock->sum('inStock');
            $soldQuantity = $product->stock->sum('outStock');

            $balance =  $inStock - $soldQuantity;

            $totalPurchase += $product->raw_price * $inStock;
            $totalInStockBalance += $product->raw_price * $balance;

            $productInStock += $balance;

        }

        $paidOrders = Order::where('status','completed')->whereHas('transaction', function ($query) {
            $query->where('status', 'paid');
        })->get();

        // Count the number of paid orders
        $paidOrdersCount = $paidOrders->count();

        $unpaidOrders = Order::where('status','completed')->whereHas('transaction', function ($query) {
            $query->where('status', 'unpaid');
        })->get();

        // Count the number of paid orders
        $unpaidOrdersCount = $unpaidOrders->count();

        // Calculate total profit
        $totalProfit = $this->calculateTotalProfit();
        $totalLoss = $this->calculateTotalLoss();

        // Calculate total profit
        // $totalLoss = $this->calculateTotalLoss();
        // $webInfo = WebInfo::first();

        return view('admin.index',compact(
                'orders',
                'total_orders',
                'total',
                'products',
                'category',
                'customers',
                'pending_order',
                'completed_order',
                'campaign',
                'subtotal',
                'productInStock',
                'topOrderedProducts',
                'ordered_products',
                'totalProfit',
                'totalLoss',
                'totalPurchase',
                'purchaseStock',
                'totalDue',
                'totalPaid',
                'paidOrdersCount',
                'unpaidOrdersCount',
                'totalInStockBalance',
                // 'webInfo',
            ));
    }


    private function calculateTotalProfit()
    {
        // Get completed orders
        $orders = Order::where('status', 'completed')->whereHas('transaction', function ($query) {
            $query->where('status', 'paid');
        })->get();

        $totalProfit = 0;

        foreach ($orders as $order) {
            // Initialize total cost for products in this order
            $purchasePrice = 0;

            // Calculate the total cost of products in the order
            foreach ($order->order_item as $orderItem) {
                // Assuming 'cost_price' is the column name in the product table for the cost price
                $purchasePrice += $orderItem->product->raw_price * $orderItem->quantity;
            }

            // Calculate 1% of the total amount for courier
            $onePercent = ($order->subtotal - $order->discount) * 0.01;

            // Selling price remains unchanged
            $sellingPrice = ($order->subtotal - $order->discount) - $onePercent;

            // Calculate profit for this order
            $profit = $sellingPrice - $purchasePrice;

            // Accumulate profit
            $totalProfit += $profit;
        }

        return $totalProfit;
    }


    private function calculateTotalLoss()
    {
        // Get completed orders
        $orders = Order::where('status', 'completed')->get();

        $totalLoss = 0;

        foreach ($orders as $order) {
            // Calculate 1% of the total amount for courier
            $onePercent = ($order->subtotal - $order->discount) * 0.01;

            // Selling price remains unchanged
            $SellingPrice = ($order->subtotal - $order->discount) - $onePercent;

            // Initialize total cost for products in this order
            $purchasePrice = 0;

            // Calculate the total cost of products in the order
            foreach ($order->order_item as $orderItem) {
                // Assuming 'cost_price' is the column name in the product table for the cost price
                $purchasePrice += $orderItem->product->raw_price * $orderItem->quantity;
            }

            // If the total cost of products is greater than the total amount paid
            if ($purchasePrice > $SellingPrice) {
                // Calculate the loss for this order
                $loss = $purchasePrice - $SellingPrice;

                // Accumulate the total loss
                $totalLoss += $loss;
            }
        }

        return $totalLoss;
    }


    public function markNotificationAsRead(Request $request)
    {
        // Find the notification by its ID
        $notification = Auth::user()->notifications()->find($request->id);
        $stockNotify = \DB::table('notifications')->where('type', 'App\Notifications\LowStockNotification')->where('id', $request->id)->first();
        $orderNotify = \DB::table('notifications')->where('type', 'App\Notifications\NewPendingOrderNotification')->where('id', $request->id)->first();

        // If the notification exists and belongs to the authenticated user
        if ($notification) {
            // Mark the notification as read
            $notification->markAsRead();

        } elseif ($stockNotify || $orderNotify) {

            \DB::table('notifications')->where('id', $request->id)->update(['read_at' => now()]);

        }
            // dd($stockNotify);
        // Redirect the user back to the previous page or to a specific route
        return response()->json(200);
    }

}
