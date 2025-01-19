<?php

namespace App\Http\Traits;

// use App\Models\Size;
use App\Models\Color;
use App\Models\Order;
use App\Models\Products;
use App\Models\order_items;

trait ProductStockTrait {

    public function getProductStock($productId)
    {
        $product = Products::with(['variants.attributes.attribute', 'order_item.order'])
            ->where('id', $productId)
            ->first();

        if (!$product) {
            return [];
        }

        $variants = $product->variants->map(function ($variant) {

            $variantColorAttribute = $variant->attributes->firstWhere('attribute.name', 'Color');
            // $variantSizeAttribute = $variant->attributes->firstWhere('attribute.name', 'Size');

            $variantColor = $variantColorAttribute ? $variantColorAttribute->attribute->value : null;
            // $variantSize = $variantSizeAttribute ? $variantSizeAttribute->attribute->value : null;

            $outStock = order_items::where('product_id', $variant->product_id)
                ->whereHas('order', function($query) {
                    $query->where('status', 'completed');
                })
                ->where('color_id', $variantColor)
                // ->where('size_id', $variantSize)
                ->sum('quantity');

            return [
                'variant_id' => $variant->id,
                'product_id' => $variant->product_id,
                // 'color' => $variantColor ? Color::find($variantColor)->color_name : 'No Color',
                // 'size' => $variantSize ? Size::find($variantSize)->size : 'No Size',
                // 'size' => $variantSize ? (Size::find($variantSize) ? Size::find($variantSize)->size : 'No Size') : 'No Size',
                'inStock' => $variant->stock,
                'outStock' => $outStock,
                'price' => $variant->price,
            ];
        });

        return $variants;
    }

}
