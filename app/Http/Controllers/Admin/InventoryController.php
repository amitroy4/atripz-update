<?php

namespace App\Http\Controllers\Admin;

use PDF;
use Carbon\Carbon;
use App\Models\Size;
use App\Models\Color;
use App\Models\Category;
use App\Models\Products;
use App\Models\order_items;
use Illuminate\Http\Request;
use App\Models\Product_stock;
use App\Models\ProductVariant;
use App\Models\ProductAttribute;
use App\Models\VariantAttribute;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Http\Traits\ProductStockTrait;
use App\Models\Supplier;
use Illuminate\Support\Facades\Session;

class InventoryController extends Controller
{
    use ProductStockTrait;

    public function itemWise()
    {
        $products = Products::get();

        foreach ($products as $product) {

            $product->stock = $this->getProductStock($product->id);

            $inStock = $product->stock->sum('inStock');
            $soldQuantity = $product->stock->sum('outStock');

            $product->inStock = $inStock;
            $product->balance =  $inStock - $soldQuantity;
            $product->purchasePrice = $inStock * $product->raw_price;
            $product->purchaseBalance = $product->balance * $product->raw_price;
            $product->soldQuantity = ($soldQuantity > 0) ? $soldQuantity : 0;

        }
        $colors = Color::all();
        $sizes = Size::all();
        $suppliers = Supplier::all();


        return view('admin.inventory.index',compact('products','colors','sizes','suppliers'));
    }


    public function newstock(Request $request)
    {
        $id = $request->id;
        $product = Products::with([
            'variants.attributes.attribute',
            'supplier'
        ])->findOrFail($id);;

        foreach($product->variants as $variant){
            $product->hasVariants = $variant->attributes->isNotEmpty();
        }

        $product->stock = $this->getProductStock($product->id);

        // dd($product);

        return response()->json(['product' => $product,'colors' => Color::all(),
        'sizes' => Size::all(),]);
    }

    // private function getProductStock($productId)
    // {
    //     $product = Products::with(['variants.attributes.attribute', 'order_item'])
    //         ->where('id', $productId)
    //         ->first();

    //     $variants = $product->variants->map(function ($variant) {

    //         if ($variant->attributes->where('attribute.name','Color')->isNotEmpty()) {
    //             $variantColor = $variant->attributes->firstWhere('attribute.name', 'Color')->attribute->value;
    //         }else{
    //             $variantColor = '';
    //         }

    //         if ($variant->attributes->where('attribute.name','Size')->isNotEmpty()) {
    //             $variantSize = $variant->attributes->firstWhere('attribute.name', 'Size')->attribute->value;
    //         }else{
    //             $variantSize = '';
    //         }

    //         $outStock = order_items::where('product_id', $variant->product_id)
    //             ->whereHas('order', function($query) {
    //                 $query->where('status', 'completed');
    //             })
    //             ->where('color_id', $variantColor)
    //             ->where('size_id', $variantSize)
    //             ->sum('quantity');

    //         return [
    //             'variant_id' => $variant->id,
    //             'product_id' => $variant->product_id,
    //             'color' => Color::find($variantColor)->color_name ?? 'No Color',
    //             'size' => Size::find($variantSize)->size ?? 'No Size',
    //             'inStock' => $variant->stock,
    //             'outStock' => $outStock,
    //         ];
    //     });
    //     return $variants;
    // }

    public function addstock(Request $request)
    {
        $productId = $request->product_id;

        $product = Products::find($productId);

        // Update product variants and their attributes
        $variantIds = $request->input('variant_ids', []);
        $variantColors = $request->input('variant_color', []);
        $variantSizes = $request->input('variant_size', []);
        $variantPrices = $request->input('variant_price', []);
        $variantStocks = $request->input('variant_stock', []);

        foreach ($variantIds as $index => $variantId) {
            $variant = ProductVariant::find($variantId);

            if ($variant) {
                // Update existing variant
                $variant->update([
                    'price' => $variantPrices[$index],
                    'stock' => \DB::raw("stock + $variantStocks[$index]"),
                ]);

                // Update variant attributes
                if (isset($variantColors[$index])) {
                    $colorAttribute = $variant->attributes()->whereHas('attribute', function($query) {
                        $query->where('name', 'Color');
                    })->first();

                    if ($colorAttribute) {
                        $colorAttribute->attribute->update(['value' => $variantColors[$index]]);
                    } else {
                        $colorAttr = ProductAttribute::create(['product_id' => $product->id, 'name' => 'Color', 'value' => $variantColors[$index]]);
                        VariantAttribute::create(['variant_id' => $variant->id, 'attribute_id' => $colorAttr->id]);
                    }
                }

                if (isset($variantSizes[$index])) {
                    $sizeAttribute = $variant->attributes()->whereHas('attribute', function($query) {
                        $query->where('name', 'Size');
                    })->first();

                    if ($sizeAttribute) {
                        $sizeAttribute->attribute->update(['value' => $variantSizes[$index]]);
                    } else {
                        $sizeAttr = ProductAttribute::create(['product_id' => $product->id, 'name' => 'Size', 'value' => $variantSizes[$index]]);
                        VariantAttribute::create(['variant_id' => $variant->id, 'attribute_id' => $sizeAttr->id]);
                    }
                }
            }
        }

        //create new variant
        if ($request->has('new_variant_color') || $request->has('new_variant_size')) {

            $colors = $request->new_variant_color;
            $sizes = $request->new_variant_size;
            $prices = $request->new_variant_price;
            $stocks = $request->new_variant_stock;

            foreach ($stocks as $index => $stock) {

                $variant = new ProductVariant;
                $variant->product_id = $product->id;
                $variant->price = $prices[$index];
                $variant->stock = $stock;
                $variant->save();

                if (isset($colors[$index])) {
                    $colorAttribute = ProductAttribute::create([
                        'product_id' => $product->id,
                        'name' => 'Color',
                        'value' => $colors[$index],
                    ]);
                    VariantAttribute::create([
                        'variant_id' => $variant->id,
                        'attribute_id' => $colorAttribute->id,
                    ]);
                }

                if (isset($sizes[$index])) {
                    $sizeAttribute = ProductAttribute::create([
                        'product_id' => $product->id,
                        'name' => 'Size',
                        'value' => $sizes[$index],
                    ]);
                    VariantAttribute::create([
                        'variant_id' => $variant->id,
                        'attribute_id' => $sizeAttribute->id,
                    ]);
                }
            }
        }

        $product->update([
            'raw_price' => $request->supplierPrice,
            'regular_price' => $request->regularPrice,
        ]);

        Session::flash('success', 'New Stock added to the inventory.');
        return response()->json(['status' => 200, 'message' => 'New Stock added to the inventory!']);
    }

    public function CategoryWiseFilter(Request $request)
    {
        $categoryIds = $request->input('id');
        $dateRange = $request->input('date');



        $query = Products::with(['sizes', 'product_stocks']);

        if ($categoryIds) {
            $query->whereHas('category', function ($innerQuery) use ($categoryIds) {
                $innerQuery->whereIn('id', $categoryIds);
            });
        }

        if ($dateRange) {
            $dates = explode(' - ', $dateRange);
            $startDate = Carbon::createFromFormat('m/d/Y', $dates[0])->format('Y-m-d');
            $endDate = Carbon::createFromFormat('m/d/Y', $dates[1])->format('Y-m-d');
            $query->whereHas('product_stocks', function ($innerQuery) use ($startDate, $endDate) {
                $innerQuery->whereBetween('purchase_date', [$startDate, $endDate]);
            });
        }

        $products = $query->get();

        foreach ($products as $product) {
            foreach ($product->sizes as $size) {
                // Find the product stock for the current size
                $stock = $product->product_stocks->firstWhere('size_id', $size->id);

                // Calculate in-stock, out-of-stock, and balance quantities
                $inStock = $stock ? $stock->inStock : 0;
                $outStock = $stock ? $stock->outStock : 0;
                $balance = $inStock - $outStock;

                // Assign calculated quantities to the size object
                $size->inStock = $inStock;
                $size->outStock = $outStock;
                $size->balance = $balance;
            }

            $product->totalInStock = $product->product_stocks->sum('inStock');
            $product->totalOutStock = $product->product_stocks->sum('outStock');
            $product->totalBalance = $product->product_stocks->sum('inStock') - $product->product_stocks->sum('outStock');
        }

        // dd($products);
        return response()->json(['status'=>200, 'data' => $products]);
    }

    public function SizeWiseReport()
    {
        $query = Products::with(['sizes', 'product_stocks']);

        $products = $query->get();

        foreach ($products as $product) {
            foreach ($product->sizes as $size) {
                // Find the product stock for the current size
                $stock = $product->product_stocks->firstWhere('size_id', $size->id);

                // Calculate in-stock, out-of-stock, and balance quantities
                $inStock = $stock ? $stock->inStock : 0;
                $outStock = $stock ? $stock->outStock : 0;
                $balance = $inStock - $outStock;

                // Assign calculated quantities to the size object
                $size->inStock = $inStock;
                $size->outStock = $outStock;
                $size->balance = $balance;
            }

            $product->totalInStock = $product->product_stocks->sum('inStock');
            $product->totalOutStock = $product->product_stocks->sum('outStock');
            $product->totalBalance = $product->product_stocks->sum('inStock') - $product->product_stocks->sum('outStock');
        }

        // dd($products);
        // Log::info($products);
        $pdf= PDF::loadView('admin.inventory.sizewise_report',['products'=>$products],[],[
            'format' => 'A4'
          ]);

        //   $pdf->download();
        return $pdf->download('sizewise_Inventory_report.pdf');
    }
}
