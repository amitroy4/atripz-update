<?php

namespace App\Livewire;

use App\Models\Size;
use App\Models\Color;
use Livewire\Component;
use App\Models\Campaign;
use App\Models\Products;
use App\Models\order_items;
use Livewire\Attributes\On;
use App\Models\Product_image;
use App\Models\Specification;
use Livewire\WithFileUploads;
use App\Models\CategorySizeHeader;
use App\Http\Traits\ProductStockTrait;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Storage;

class ProductComponent extends Component
{
    use ProductStockTrait;
    use WithFileUploads;


    public function selectSize($size)
    {
        $this->selectedSize = $size;
    }

    public function selectColor($color)
    {
        // dd($color);
        $this->selectedColor = $color;
        $this->selectedSize = null;
    }

    public function selectSizeVariant($sizename,$variant)
    {
        $this->selectedSize = $sizename;
        $this->selectedVariant = $variant;
        // dd($sizename,$variant);
    }

    public $slug;
    public $selectedEyewear = 'BuyOnlyFrame';
    public $lensType = null;
    public $Note = '';
    public $prescriptionImage ;
    public $lensPrice = 0;
    public $finalAmount = 0;
    public $selectedColor;
    public $selectedVariant;
    public $selectedSize;

    public function mount($slug)
    {
        $this->slug= $slug;
        $this->Note = '';
    }

    // public function Note($Note){
    //     $this->Note = $Note;
    // }

    public function itemColor($colorId){
        $this->selectedColor = $colorId;
    }
    public function itemSize($sizeId){
        $this->selectedSize = $sizeId;
    }
    public function itemVariant($variantId){
        $this->selectedVariant = $variantId;
    }

    public function store($id)
    {

        $product = Products::find($id);
        $item_id = $product->id;
        $item_name = $product->product_name;
        $item_qty = session()->get('quantity') + 1;
        $selectedSize = session()->get('product_size');
        $selectedColor = session()->get('product_color');
        $selectedVariant = session()->get('variant_id');

        $offer_price = $product->product_price->offer_price;
        $campaign = Campaign::where('status','Published')->first();
        $flag = 0;
        if ($campaign) {
            $camp_products = $campaign->camp_product;

            foreach ($camp_products as $key => $camp_product) {
                if ($product->id == $camp_product->product_id) {

                    $camp_price = $camp_product->camp_price;
                    $flag = 1;
                }
            }
        }

        if( $flag == 1)
        {
            $item_price = $camp_price;
        }
        elseif($offer_price > 0)
        {
            $item_price = $offer_price;
        }
        else{
            $item_price = $product->regular_price;
        }
        // $item_price = ($offer_price > 0) ? $offer_price : $product->regular_price;

        $item_slug = $product->slug;
        $item_image = Product_image::where('product_id', $id)->select('product_image')->first();
        $tempPath = '';
        // if($this->selectedEyewear == 'ChoosePowerLens'){

        //     $this->validate([
        //        'prescriptionImage' => 'nullable|mimes:jpg,jpeg,png,pdf|max:1024', // Validate prescription image
        //     ]);

        //     if($this->prescriptionImage){
        //         $tempPath = $this->prescriptionImage->store('livewire-temp', 'public');
        //         session(['temp_file_path' => $tempPath]);
        //     }
        //     else{
        //         // return redirect()->back()->with('danger','Please Upload prescription.');
        //          $tempPath = "";
        //     }

        //     // Extract lens type and price from the lensType variable
        //     list($lensType, $lensPrice) = explode('+', $this->lensType);

        //     // Calculate the final amount
        //     $this->finalAmount = $item_price + $lensPrice;
        //     $item_price =$this->finalAmount;
        //     $options = [
        //         'image' => $item_image,
        //         'slug' => $item_slug,
        //         'size' => $this->selectedSize,
        //         'color' =>$this->selectedColor,
        //         'variant_id' =>$this->selectedVariant,
        //         'selected_eyewear' => $this->selectedEyewear,
        //         'lens_type' => $lensType,
        //         'prescription_note' => $this->Note,
        //         'prescription_image' => $tempPath,
        //         'lens_price' => $lensPrice,
        //         'final_amount' => $this->finalAmount,
        //         // Add more fields as needed
        //     ];
        // }
        // else{


            $options = [
                'image' => $item_image,
                'slug' => $item_slug,
                'size' => $this->selectedSize,
                'color' =>$this->selectedColor,
                'variant_id' =>$this->selectedVariant,
                'selected_eyewear' => $this->selectedEyewear,
                'lens_type' => null,
                'prescription_note' => null,
                'prescription_image' => null,
                'lens_price' => null,
                'final_amount' => $item_price,
                // Add more fields as needed
            ];
        // }
        $item_qty = session()->get('quantity') + 1;
        $item_data = Cart::instance('cart')->add($item_id,$item_name,$item_qty,$item_price,$options);

        session()->forget('quantity');
        session()->forget('product_size');
        session()->forget('product_color');
        session()->forget('variant_id');

        Session::flash('success','Product added To cart.');
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }

    // buy now product by cart
    public function buyNow($id)
    {
        $product = Products::find($id);
        $item_id = $product->id;
        $item_name = $product->product_name;
        $item_qty = session()->get('quantity') + 1;
        $selectedSize = session()->get('product_size');
        $selectedColor = session()->get('product_color');
        $selectedVariant = session()->get('variant_id');

        $offer_price = $product->product_price->offer_price;
        $campaign = Campaign::where('status','Published')->first();
        $flag = 0;
        if ($campaign) {
            $camp_products = $campaign->camp_product;

            foreach ($camp_products as $key => $camp_product) {
                if ($product->id == $camp_product->product_id) {

                    $camp_price = $camp_product->camp_price;
                    $flag = 1;
                }
            }
        }

        if( $flag == 1)
        {
            $item_price = $camp_price;
        }
        elseif($offer_price > 0)
        {
            $item_price = $offer_price;
        }
        else{
            $item_price = $product->regular_price;
        }
        // $item_price = ($offer_price > 0) ? $offer_price : $product->regular_price;

        $item_slug = $product->slug;
        $item_image = Product_image::where('product_id', $id)->select('product_image')->first();
        $tempPath = '';
        if($this->selectedEyewear == 'ChoosePowerLens'){


            $this->validate([
                'prescriptionImage' => 'nullable|mimes:jpg,jpeg,png,pdf|max:1024', // Validate prescription image
            ]);
            if($this->prescriptionImage){
                $tempPath = $this->prescriptionImage->store('livewire-temp', 'public');
                session(['temp_file_path' => $tempPath]);
            }
            else{
                // return redirect()->back()->with('danger','Please Upload prescription.');
                 $tempPath = "";
            }

            // Extract lens type and price from the lensType variable
            list($lensType, $lensPrice) = explode('+', $this->lensType);

            // Calculate the final amount
            $this->finalAmount = $item_price + $lensPrice;
            $item_price =$this->finalAmount;

            $options = [
                'image' => $item_image,
                'slug' => $item_slug,
                'size' => $this->selectedSize,
                'color' =>$this->selectedColor,
                'variant_id' =>$this->selectedVariant,
                'selected_eyewear' => $this->selectedEyewear,
                'lens_type' => $lensType,
                'prescription_note' => $this->Note,
                'prescription_image' => $tempPath,
                'lens_price' => $lensPrice,
                'final_amount' => $this->finalAmount,
                // Add more fields as needed
            ];
        }
        else{
            $options = [
                'image' => $item_image,
                'slug' => $item_slug,
                'size' => $this->selectedSize,
                'color' =>$this->selectedColor,
                'variant_id' =>$this->selectedVariant,
                'selected_eyewear' => $this->selectedEyewear,
                'lens_type' => null,
                'prescription_note' => null,
                'prescription_image' => null,
                'lens_price' => null,
                'final_amount' => $item_price,
                // Add more fields as needed
            ];
        }
        $item_qty = session()->get('quantity') + 1;
        $item_data = Cart::instance('cart')->add($item_id,$item_name,$item_qty,$item_price,$options);


        // session()->forget('prescription_note');
        session()->forget('quantity');
        session()->forget('product_size');
        session()->forget('product_color');
        session()->forget('variant_id');

        Session::flash('success', 'Product added to cart.');
            // return response()->json( $item_data);
        return redirect()->route('checkout');
    }

    public $sizeChartData = [], $categoryHeaders = [], $headers = [], $sizes;


    #[On('qtyRefresh')]


    public function render()
    {
        $product = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'subcategory',
            'product_price',
            'product_thumbnail',
            'product_stocks',
            'colorImages',
            'variants'
        ])->where('slug', $this->slug)->where('status','active')->first();


            // Size chart Methods
        $categorySizeHeaders = CategorySizeHeader::where('category_id', $product->category_id)
        ->with(['size', 'sizeHeader'])
        ->get();

        foreach ($categorySizeHeaders as $entry) {
            $this->sizeChartData[$product->category_id][$entry->size->size_name][$entry->sizeHeader->name] = $entry->value;
            $this->headers[$entry->sizeHeader->id] = $entry->sizeHeader->name;
        }
        $this->sizes = Size::all();

        $this->categoryHeaders[$product->category_id] = $this->headers;

        // Prepare distinct colors and sizes
        $distinctColors = $product->variants->flatMap(function ($variant) {
            return $variant->attributes->filter(function ($attribute) {
                return $attribute->attribute->name === 'Color';
            });
        })->unique('attribute.value');

        //product stock balance
        $product->stock = $this->getProductStock($product->id);

        // dd($product->stock);
        $inStock = collect($product->stock)->sum('inStock');
        $soldQuantity = collect($product->stock)->sum('outStock');

        $product->inStock = $inStock;
        $product->balance = $inStock - $soldQuantity;

        $productStock = $this->getVariantProductStock($product->id);
        // Group stock data by color and colors
        $colorStockData = $this->groupStockByColor($productStock);
        $sizeStockData = $this->groupStockBySize($productStock);

        $specifications = Specification::where('product_id',$product->id)->get();
        // dd($sizeStockData, $colorStockData);
        // dd($productStock);
        $productDetails = [];
        // Loop through the productStock and group data accordingly
        foreach ($productStock as $item) {
            $productId = $item['product_id'];
            $color = $item['color'];
            $size = $item['size'];
            $inStock = $item['inStock'];
            $outStock = $item['outStock'];
            $variantId = $item['variant_id'];

            // Check if the product_id exists in the array, if not, initialize it
            if (!isset($productDetails[$productId])) {
                $productDetails[$productId] = [];
            }

            // Check if the color exists under the product_id, if not, initialize it
            if (!isset($productDetails[$productId][$color])) {
                $productDetails[$productId][$color] = [];
            }

            // Check if the size exists under the color, if not, initialize it with stock details and variant_id
            if (!isset($productDetails[$productId][$color][$size])) {
                $productDetails[$productId][$color][$size] = [
                    'variant_id' => $variantId,
                    'inStock' => $inStock,
                    'outStock' => $outStock
                ];
            }
        }

        $realatedProducts = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'colors',
            'brand',
            'category',
            'subcategory',
            'product_price',
            'product_thumbnail'
        ])->where('category_id', $product->category_id)->where('id', '!=', $product->id)->get();

        $campaign = Campaign::where('status','Published')->first();

        // dd($productDetails);

        return view('livewire.product-component',
        [
            'product'=>$product,
            'categoryHeaders' => $this->categoryHeaders,
            'sizeChartData' => $this->sizeChartData,
            'sizes' => $this->sizes,
            'colorStockData' => $colorStockData,
            'colors' => Color::all(),
            'specifications' => $specifications,
            'productDetails' => $productDetails,
            'realatedProducts' => $realatedProducts,
            'campaign' => $campaign,
        ]);
    }

    private function getVariantProductStock($productId)
    {
        $product = Products::with(['variants.attributes.attribute'])
            ->where('id', $productId)
            ->first();

        if (!$product) {
            return [];
        }

        $variants = $product->variants->map(function ($variant) {
            $variantColorAttribute = $variant->attributes->firstWhere('attribute.name', 'Color');
            $variantSizeAttribute = $variant->attributes->firstWhere('attribute.name', 'Size');

            $variantColor = $variantColorAttribute ? $variantColorAttribute->attribute->value : null;
            $variantSize = $variantSizeAttribute ? $variantSizeAttribute->attribute->value : null;

            $outStock = order_items::where('product_id', $variant->product_id)
                ->when($variantColor, function ($query) use ($variantColor) {
                    return $query->where('color_id', $variantColor);
                })->whereHas('order', function($query) {
                    $query->where('status', 'completed');
                })
                ->sum('quantity');

            return [
                'variant_id' => $variant->id,
                'product_id' => $variant->product_id,
                'color' => $variantColor ? Color::find($variantColor)->color_name : null,
                'size' => $variantSize ? Size::find($variantSize)->size : null,
                'inStock' => $variant->stock,
                'outStock' => $outStock,
            ];
        })->filter(function ($variant) {
            return !is_null($variant['color']) ;
        });

        return $variants->toArray();
    }


    private function groupStockByColor($productStock)
    {
        $groupedByColor = [];

        foreach ($productStock as $variant) {
            $color = $variant['color'];

            if ($color !== null) {
                if (!isset($groupedByColor[$color])) {
                    $groupedByColor[$color] = [
                        'inStock' => 0,
                        'outStock' => 0,
                        'balance' => 0,
                    ];
                }

                $groupedByColor[$color]['inStock'] += $variant['inStock'];
                $groupedByColor[$color]['outStock'] += $variant['outStock'];
                $groupedByColor[$color]['balance'] = $groupedByColor[$color]['inStock'] - $groupedByColor[$color]['outStock'];
            }
        }

        return $groupedByColor;
    }


    private function groupStockBySize($productStock)
    {
        $groupedBySize = [];

        foreach ($productStock as $variant) {
            $size = $variant['size'];

            if ($size !== null) {
                if (!isset($groupedBySize[$size])) {
                    $groupedBySize[$size] = [
                        'inStock' => 0,
                        'outStock' => 0,
                        'balance' => 0,
                    ];
                }

                $groupedBySize[$size]['inStock'] += $variant['inStock'];
                $groupedBySize[$size]['outStock'] += $variant['outStock'];
                $groupedBySize[$size]['balance'] = $groupedBySize[$size]['inStock'] - $groupedBySize[$size]['outStock'];
            }
        }

        return $groupedBySize;
    }



}
