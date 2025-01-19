<?php

namespace App\Http\Controllers\Admin;

use Exception;
use App\Models\Size;
use App\Models\Brand;
use App\Models\Color;
use App\Models\Category;
use App\Models\Products;
use App\Models\Supplier;
use App\Models\order_items;
use App\Models\Product_tag;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use App\Models\Product_extra;
use App\Models\Product_image;
use App\Models\Product_price;
use App\Models\products_size;
use App\Models\Specification;
use Illuminate\Http\Response;
use App\Models\products_color;
use App\Models\ProductVariant;
use Illuminate\Validation\Rule;
use App\Models\Product_overview;
use App\Models\ProductAttribute;
use App\Models\VariantAttribute;
use App\Models\Product_thumbnail;
use App\Models\ProductColorImage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Intervention\Image\ImageManager;
use App\Models\Product_additionalinfo;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Drivers\Gd\Driver;

class ProductController extends Controller
{

    public function __construct()
    {
        // examples:
        // $this->middleware(['role:Admin','permission:CREATE PRODUCT']);
        // $this->middleware(['role_or_permission:Admin|CREATE PRODUCT']);
        // or with specific guard
        // $this->middleware(['role_or_permission:manager|edit articles,api']);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        // Retrieve overviews for a product
        // $products = Products::all();
        // $overviews = $products->overviews;
        $products = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'product_stocks',
            'variants.attributes.attribute'
        ])->get();

        //method-2
        foreach ($products as $product) {
            $variantData = [];

            if ($product->variants->isNotEmpty()) {
                foreach ($product->variants as $variant) {
                    $color = $variant->attributes->firstWhere('attribute.name', 'Color')->attribute->value ?? 'No Color';
                    // $size = $variant->attributes->firstWhere('attribute.name', 'Size')->attribute->value ?? 'No Size';

                    $variantData[] = [
                        'color' => $color,
                        // 'size' => $size,
                        'price' => $variant->price,
                        'stock' => $variant->stock,
                    ];
                }
            } else {
                $variantData[] = [
                    'color' => 'No Color',
                    // 'size' => 'No Size',
                    'price' => $product->regular_price,
                    'stock' => 0,
                ];
            }

            $product->variantData = $variantData;
        }

        foreach ($products as $product) {

            $product->stock = $this->getProductStock($product->id);

            $inStock = $product->stock->sum('inStock');
            $soldQuantity = $product->stock->sum('outStock');

            $product->inStock = $inStock;
            $product->balance =  $inStock - $soldQuantity;
        }

        return view('admin.products.index',compact('products'));
    }

    private function getProductStock($productId)
    {
        $product = Products::with(['variants.attributes.attribute', 'order_item'])
            ->where('id', $productId)
            ->first();

        $variants = $product->variants->map(function ($variant) {

            if ($variant->attributes->where('attribute.name','Color')->isNotEmpty()) {
                $variantColor = $variant->attributes->firstWhere('attribute.name', 'Color')->attribute->value;
            }else{
                $variantColor = '';
            }

            // if ($variant->attributes->where('attribute.name','Size')->isNotEmpty()) {
            //     $variantSize = $variant->attributes->firstWhere('attribute.name', 'Size')->attribute->value;
            // }else{
            //     $variantSize = '';
            // }

            $outStock = order_items::where('product_id', $variant->product_id)
                ->where('color_id', $variantColor)
                // ->where('size_id', $variantSize)
                ->sum('quantity');

            return [
                'variant_id' => $variant->id,
                'product_id' => $variant->product_id,
                'color' => Color::find($variantColor)->color_name ?? 'No Color',
                // 'size' => Size::find($variantSize)->size ?? 'No Size',
                'inStock' => $variant->stock,
                'outStock' => $outStock,
            ];
        });
        return $variants;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $brands = Brand::all();
        $categories = Category::all();
        $subcategories = Subcategory::all();
        $colors = Color::all();
        $sizes = Size::all();
        $suppliers = Supplier::all();
        return view('admin.products.create',[
            'brands' => $brands,
            'categories' => $categories,
            'subcategories' => $subcategories,
            'colors' =>$colors,
            'sizes' =>$sizes,
            'suppliers'=> $suppliers
            ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $rules = [
            'product_name' => 'required|string',
            'product_brand' => 'required|exists:brands,id',
            'product_category' => 'required|exists:categories,id',
            'raw_price' => 'nullable|numeric',
            'regular_price' => 'nullable|numeric',
            'offer_price' => 'nullable|numeric',
            'description' => 'nullable|string',
            'sku' => 'required|string|unique:products,sku',
            'status' => 'required|in:active,inactive',

            'featurename.*' => 'nullable|string',
            'featurevalue.*' => 'nullable|string',

            'tags.*' => 'nullable|string',

            'info_name.*' => 'nullable|string',
            'info_value.*' => 'nullable|string',

            'product_image.*' => 'required|image|mimes:jpeg,png,jpg,webp|max:10240',
            // 'product_thumnail.*' => 'required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:5120',

            'warranty' => 'nullable|string',
            'return_policy' => 'nullable|string',
            'delivery_type' => ['nullable', 'string', Rule::in(['0', '1', '2'])],
            'emi' => ['nullable', 'string', Rule::in(['Available', 'Not Available'])],

            'variant_color.*' => 'nullable|exists:colors,id',
            'variant_size.*' => 'nullable|exists:sizes,id',
            'variant_price.*' => 'nullable|numeric',
            'variant_stock.*' => 'required|numeric',
        ];


        $validator = Validator::make($request->all(),$rules);

        // Validate the request
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else{

            try {
                DB::beginTransaction();
                // Save the product with dynamic fields data
                $product = new Products;
                $product->product_name = $request->product_name;
                $product->brand_id = $request->product_brand;
                $product->category_id = $request->product_category;
                $product->supplier_id = $request->supplier;
                $product->raw_price = $request->raw_price;
                $product->regular_price = $request->regular_price;
                // $product->offer_price = $request->offer_price;
                $product->description = $request->description;
                $product->sku = $request->sku;
                $product->status = $request->status;
                $product->save();

                // Save product variant
                if($request->is_variant_true){
                    if ($request->has('variant_color')) {

                        $colors = $request->variant_color;
                        $sizes = $request->variant_size;
                        $prices = $request->variant_price;
                        $stocks = $request->variant_stock;

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
                }else{

                    ProductVariant::create([
                        'product_id' => $product->id,
                        'price' => $product->regular_price,
                        'stock' => 0,
                    ]);
                }

                // Save product images and thumbnails
                $this->saveProductImages($request, $product);

                // Save product features
                $this->saveProductFeatures($request, $product);

                // Save product additional info
                // $this->saveProductAdditionalInfo($request, $product);

                // Save product extra info
                $this->saveProductExtraInfo($request, $product);

                // Save offer price
                $this->saveProductOfferPrice($request, $product);

                // Save product tags
                $this->saveProductTags($request, $product);

                Session::flash('success', 'Product added successfully.');

                DB::commit();

                return redirect()->back();

            } catch (Exception $e) {
                //throw $th;
                DB::rollBack();
                Log::info('Product Error: '. $e);
                Session::flash('success', 'Product added Faild.'. $e);

                return redirect()->back();
            }
        }

    }

    private function saveProductImages(Request $request, $product)
    {
        if ($request->hasFile('product_thumbnail')) {
            $thumbnail = $request->file('product_thumbnail');
            foreach ($thumbnail as $index => $image) {
                $manager = new ImageManager(new Driver());
                $imageName = $product->slug . '_' . $index . '.' . $image->getClientOriginalExtension();
                $img = $manager->read($image);
                $imagePath = 'product_images/thumbnail/' . $imageName;
                Storage::disk('public')->put($imagePath, (string)$img->encode());
                Product_thumbnail::create([
                    'product_id' => $product->id,
                    'product_thumbnail' => $imageName,
                ]);
            }
        }

        if ($request->hasFile('product_image')) {
            $images = $request->file('product_image');
            foreach ($images as $index => $image) {
                $manager = new ImageManager(new Driver());
                $imageName = $product->slug . '_' . $index . '.' . $image->getClientOriginalExtension();
                $img = $manager->read($image);
                $imagePath = 'product_images/' . $imageName;
                Storage::disk('public')->put($imagePath, (string)$img->encode());
                Product_image::create([
                    'product_id' => $product->id,
                    'product_image' => $imageName,
                ]);
            }
        }
    }

    private function saveProductFeatures(Request $request, $product)
    {
        $featureNames = $request->input('featurename', []);
        $featureValues = $request->input('featurevalue', []);
        foreach ($featureNames as $index => $name) {
            Product_overview::create([
                'product_id' => $product->id,
                'overview_name' => $featureNames[$index],
                'overview_value' => $featureValues[$index],
            ]);
        }
    }

    private function saveProductAdditionalInfo(Request $request, $product)
    {
        $infoNames = $request->input('additional_name', []);
        $infoValues = $request->input('additional_value', []);
        foreach ($infoNames as $index => $name) {
            Product_additionalinfo::create([
                'product_id' => $product->id,
                'additional_name' => $infoNames[$index],
                'additional_value' => $infoValues[$index],
            ]);
        }
    }

    private function saveProductExtraInfo(Request $request, $product)
    {
        Product_extra::create([
            'product_id' => $product->id,
            'warranty_type' => $request->input('warranty'),
            'return_policy' => $request->input('return_policy'),
            'delivery_type' => $request->input('delivery_type'),
            'emi' => $request->input('emi'),
        ]);
    }

    private function saveProductOfferPrice(Request $request, $product)
    {
        $price = $product->regular_price;
        $percentage = $request->input('percentage');
        $amount = $request->input('amount');
        $offer_price = 0;

        if (!empty($percentage)) {
            $amount_offer = ($percentage / 100) * $price;
            $offer_price = $price - $amount_offer;
        } else {
            $amount_offer = $amount;
        }

        if (!empty($amount)) {
            $percentage_offer = ($amount / $price) * 100;
            $percentage_offer = number_format($percentage_offer, 1);
            $offer_price = $price - $amount;
        } else {
            $percentage_offer = $percentage;
        }

        Product_price::create([
            'product_id' => $product->id,
            'offer_price' => $offer_price,
            'percentage' => $percentage_offer,
            'amount' => $amount_offer,
        ]);
    }

    private function saveProductTags(Request $request, $product)
    {
        $tags = explode(',', $request->input('tags'));
        foreach ($tags as $tagName) {
            Product_tag::firstOrCreate([
                'product_id' => $product->id,
                'tag' => trim($tagName),
            ]);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug)
    {
        $products = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'product_price',
            'supplier',
            'variants',
        ])->where('slug', $slug)->get();

        return view('admin.products.product-details',compact('products'));
    }

    public function edit(string $id)
    {
        $brands = Brand::all();
        $categories = Category::all();
        $subcategories = Subcategory::all();
        $colors = Color::all();
        $sizes = Size::all();
        $suppliers = Supplier::all();

        $products = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'product_price',
            'supplier',
            'variants.attributes.attribute'
        ])->findOrFail($id);

        foreach($products->variants as $variant){
            $products->hasVariants = $variant->attributes->isNotEmpty();
            // dd($hasVariants);
        }

        return view('admin.products.edit',compact('products','brands','categories','subcategories','colors','suppliers','sizes'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $rules = [
            'product_name' => 'required|string',
            'product_brand' => 'required|exists:brands,id',
            'product_category' => 'required|exists:categories,id',
            'raw_price' => 'nullable|numeric',
            'regular_price' => 'nullable|numeric',
            'offer_price' => 'nullable|numeric',
            'description' => 'required|string',
            // 'sku' => 'required|string|unique:products,sku',
            'status' => 'required|in:active,inactive',

            'featurename.*' => 'nullable|string',
            'featurevalue.*' => 'nullable|string',

            'tags.*' => 'nullable|string',

            'info_name.*' => 'nullable|string',
            'info_value.*' => 'nullable|string',

            'product_image.*' => 'image|mimes:jpeg,png,jpg,gif,svg,webp|max:10240',
            'product_thumnail.*' => 'image|mimes:jpeg,png,jpg,gif,svg,webp|max:5120',

            'warranty' => 'nullable|string',
            'return_policy' => 'nullable|string',
            'delivery_type' => ['nullable', 'string', Rule::in(['0', '1', '2'])],
            'emi' => ['nullable', 'string', Rule::in(['Available', 'Not Available'])],

            'variant_color.*' => 'nullable|exists:colors,id',
            'variant_size.*' => 'nullable|exists:sizes,id',
            'variant_price.*' => 'nullable|numeric',
            'variant_stock.*' => 'required|numeric',
        ];

        $validator = Validator::make($request->all(),$rules);

        // Validate the request
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else{
            try {
                DB::beginTransaction();
            $product = Products::find($id);

            // Update general product information
            $product->update([
                'product_name' => $request->product_name,
                'brand_id' => $request->product_brand,
                'category_id' => $request->product_category,
                'supplier_id' => $request->supplier,
                'raw_price' => $request->raw_price,
                'regular_price' => $request->regular_price,
                'description' => $request->description,
                'status' => $request->status,
            ]);

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
                        'price' => $variantPrices[$index] ?? 0,
                        'stock' => $variantStocks[$index] ?? 0,
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

            if ($request->has('new_variant_color')) {

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


            // Retrieve the existing images associated with the product
            $existingImages = $product->product_images;

            // Get the new set of images from the request
            if($request->hasFile('product_image')){
                $newImages = $request->file('product_image');

                // Update or add new images
                foreach ($newImages as $index => $newImage) {
                    $manager = new ImageManager(new Driver());

                    $imageName = $product->slug . '_' . $index . '_' . time() . '.' . $newImage->getClientOriginalExtension();

                    $img = $manager->read($newImage);
                    // $img = $img->resize(400, 600);
                    $imagePath = 'product_images/' . $imageName;

                    // Check if an image with the same name already exists
                    $existingImage = $existingImages->where('product_image', $imageName)->first();

                    if ($existingImage) {
                        // Update existing image
                        $existingImage->update([
                            'product_image' => $imageName,
                        ]);
                    } else {
                        // Add new image
                        Product_image::create([
                            'product_id' => $product->id,
                            'product_image' => $imageName,
                        ]);
                    Storage::disk('public')->put($imagePath, (string) $img->encode());

                    }
                }
            }

            $existingthumbs = $product->product_thumbnail;

            if($request->hasFile('product_thumbnail')){
                $thumbnail = $request->file('product_thumbnail');

                foreach ($thumbnail as $index => $image) {
                    $manager = new ImageManager(new Driver());

                    $imageName = $product->slug.'_' .$index . '_' . time() . '.' . $image->getClientOriginalExtension();

                    $img = $manager->read($image);
                    // $encoded = $img->toWebp();
                    // $img = $img->resize(400, 600);

                    $imagePath = 'product_images/thumbnail/' . $imageName;

                    // Check if an image with the same name already exists
                    $existingthumb = $existingthumbs->where('product_thumbnail', $imageName)->first();

                    if ($existingthumb) {
                        // Update existing image
                        $existingthumb->update([
                            'product_thumbnail' => $imageName,
                        ]);
                    } else {
                        Product_thumbnail::create([
                            'product_id' => $product->id,
                            'product_thumbnail' => $imageName,
                        ]);

                        Storage::disk('public')->put($imagePath , (string)$img->encode());
                    }
                }
            }


            // Update overview information
            $featureNames = $request->input('featurename', []);
            $featureValues = $request->input('featurevalue', []);

            foreach ($featureNames as $index => $name) {
                $overview = Product_overview::where('product_id', $product->id)->where('overview_name', $featureNames[$index])->first();

                if ($overview) {
                    $overview->update([
                        'overview_name' => $featureNames[$index],
                        'overview_value' => $featureValues[$index],
                    ]);
                } else {
                    Product_overview::create([
                        'product_id' => $product->id,
                        'overview_name' => $featureNames[$index],
                        'overview_value' => $featureValues[$index],
                    ]);
                }
            }

            // additional info store
            $infoNames = $request->input('additional_name', []);
            $infoValues = $request->input('additional_value', []);

            foreach ($infoNames as $index => $name) {
                $additionalInfo = Product_additionalinfo::where('product_id', $product->id)->where('additional_name', $infoNames[$index])->first();

                if ($additionalInfo) {
                    $additionalInfo->update([
                        'additional_name', $infoNames[$index],
                        'additional_value' => $infoValues[$index],
                    ]);
                } else {
                    Product_additionalinfo::create([
                        'product_id' => $product->id,
                        'additional_name' => $infoNames[$index],
                        'additional_value' => $infoValues[$index],
                    ]);
                }
            }

            $product_extra = Product_extra::where('product_id', $product->id)->first();
            // Extra info store
            $product_extra->update([
                // 'product_id' => $product->id,
                'warranty_type' => $request->input('warranty'),
                'return_policy' => $request->input('return_policy'),
                'delivery_type' => $request->input('delivery_type'),
                'emi' => $request->input('emi'),
            ]);

            // Offer price store
            $price = $product->regular_price;

            $percentage = $request->input('percentage');
            $amount = $request->input('amount');
            $offer_price = 0;

            // If offer is in percentage, convert percentage to amount
            if (!empty($percentage)) {
                $amount_offer = ($percentage / 100) * $price;
                $offer_price = $price - $amount_offer;
            }else{
                $amount_offer = $amount;
            }

            // If offer is in amount, convert amount to percentage
            if (!empty($amount)) {
                $percentage_offer = ($amount / $price) * 100;
                //$amount_discount = ($percentage_offer / 100) * $price; // Calculate the discount amount based on the percentage
                $offer_price = $price - $amount;
                // $percentage_offer = intval($percentage_offer);
                $percentage_offer = number_format($percentage_offer, 0);
            }
            else{
                $percentage_offer = $percentage;
            }
            $product_price = Product_price::where('product_id',$product->id)->first();
            $product_price->update([
                // 'product_id' => $product->id,
                'offer_price' => $offer_price,
                'percentage' => $percentage_offer,
                'amount' => $amount_offer,
            ]);


            // Update tags
            $tags = explode(',', $request->input('tags'));
            foreach ($tags as $tagName) {
                $product->tags()->updateOrCreate(
                    ['tag' => trim($tagName)]
                    // additional attributes if needed
                );
            }

            Session::flash('success', 'Product has been Updated successfully.');
            DB::commit();

                return redirect()->back();

            } catch (Exception $e) {
                //throw $th;
                DB::rollBack();
                Log::info('Product Error: '. $e);
                Session::flash('success', 'Product added Faild.'. $e);

                return redirect()->back();
            }
        }

        // return redirect()->route('products.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $product = Products::findOrFail($id);

            $product_images = Product_image::where('product_id',$id)->get();
            // Trigger the deleting event
            foreach ($product_images as $image) {
                Storage::delete('public/product_images/' . $image->product_image);
            }
            $product->delete();

            return redirect()->route('products.index')->with('success', 'Product deleted successfully.');

        } catch (\Exception $e) {
            // Log the exception or handle it in a way that makes sense for your application
            return redirect()->back()->with('warning', 'Error deleting product.'.$e->getMessage());
        }
    }

    public function image_destroy($id)
    {
        $product_image = Product_image::findOrFail($id);
        if ($product_image) {
            Storage::delete('public/product_images/' . $product_image->product_image);
            $product_image->delete();

            Session::flash('success', 'Product image has been deleted successfully!!');

            // Return a JSON response indicating success
            return response()->json(['message' => 'Product image deleted successfully'], Response::HTTP_OK);
        } else {
            // Return a JSON response indicating failure
            return response()->json(['error' => 'Product image not found'], Response::HTTP_NOT_FOUND);
        }
    }

    public function thumb_destroy($id){

        $product_thumbnail = Product_thumbnail::findOrFail($id);
        if ($product_thumbnail) {
            Storage::delete('public/product_images/thumbnail' . $product_thumbnail->product_thumbnail);
            $product_thumbnail->delete();

            Session::flash('success', 'Product thumbnail image has been deleted !!');


            // Return a JSON response indicating success
            return response()->json(['message' => 'Thumbnail image deleted successfully'], Response::HTTP_OK);
        } else {
            // Return a JSON response indicating failure
            return response()->json(['error' => 'Product image not found'], Response::HTTP_NOT_FOUND);
        }
    }

    public function variantDelete(Request $request){

        if ($request->has('variant_delete_ids')) {
            $variant = ProductVariant::find($request->variant_delete_ids);
            if ($variant) {
                $variant->attributes()->delete();
                $variant->delete();
            }
        }

        Session::flash('success','Variant and its attributes deleted successfully');
        return response()->json(['success' => 'Variant and its attributes deleted successfully']);
        // dd($request->variant_delete_ids);
    }

    // public function sizeChartUpdate(string $id)
    // {
    //     $product = Products::findOrFail($id);

    //     if($product)
    //     {
    //         $product->is_sizechart = !$product->is_sizechart;
    //         $product->save();
    //     }
    //     Session::flash('success','Size chart status updated for '.$product->sku);
    //     return redirect()->back();
    // }

    public function productStatusUpdate(string $id)
    {
        $product = Products::findOrFail($id);

        if($product)
        {
            $product->status = $product->status == 'active' ? 'inactive' : 'active';
            $product->save();
        }
        Session::flash('success','Status updated for '.$product->sku);
        return redirect()->back();
    }

    public function ProductFilter(Request $request)
    {
        $product_name = $request->input('product_name');
        $productSku = $request->input('sku');
        $startDate = $request->input('created_at');
        $endDate = $request->input('updated_at');

        $query = Products::query()->with(['overviews', 'product_infos', 'product_images', 'product_extras', 'tags', 'colors', 'brand', 'category']);

        $query->where(function ($query) use ($product_name, $productSku, $startDate, $endDate) {
            if ($product_name) {
                $query->where('product_name', 'like', "%{$product_name}%");
            }
            if ($productSku) {
                $query->orWhere('sku', 'like', "%{$productSku}%");
            }
            if ($startDate && $endDate) {
                $query
                    ->whereBetween('created_at', [$startDate, $endDate])
                    ->orWhereBetween('updated_at', [$startDate, $endDate])
                    ->whereDate('created_at', $startDate)
                    ->orWhereDate('updated_at', $endDate);
            } elseif ($startDate) {
                $query->whereDate('created_at', $startDate);
            } elseif ($endDate) {
                $query->whereDate('updated_at', $endDate);
            }
        });
        $products = $query->get();
        return response()->json(['products' => $products]);
    }

    public function ColorWiseImage(Products $product)
    {
        // dd($product->attributes);
        $colorIds = [];

        foreach ($product->attributes as $variant) {
            if ($variant->name == 'Color') {
                $colorIds[] = $variant->value;
            }
        }

        $colors = Color::whereIn('id', $colorIds)->get(); // Fetch all colors in one query
        $product->colors = $colors;
        return view('admin.products.color-wise-image.color-wise-image',compact('product'));
    }

    public function ColorWiseImageStore(Products $product, Request $request)
    {
        $validated = $request->validate([
            'image_*' => 'nullable|image|mimes:jpg,jpeg,png,webp|max:1024', // Validate uploaded files
        ]);

        $colorIds = [];

        foreach ($product->attributes as $variant) {
            if ($variant->name == 'Color') {
                $colorIds[] = $variant->value;
            }
        }

        $colors = Color::whereIn('id', $colorIds)->get();

        DB::beginTransaction();

        try {
            foreach ($colors as $color) {
                $imageField = 'image_' . $color->id;
                if ($request->hasFile($imageField)) {
                    $image = $request->file($imageField);

                    // Generate a custom name for the image
                    $extension = $image->getClientOriginalExtension();
                    $imageName = 'product_' . $product->id . '' . $color->id .''.time(). '.' . $extension;

                    // Save the image with the custom name
                    $imagePath = $image->storeAs('product_images/color-image', $imageName, 'public');

                    // Check if the record already exists
                    $existingRecord = ProductColorImage::where('product_id', $product->id)
                        ->where('color_id', $color->id)
                        ->first();

                    if ($existingRecord) {
                        // Delete the old image if it exists
                        if (Storage::disk('public')->exists($existingRecord->image)) {
                            Storage::disk('public')->delete($existingRecord->image);
                        }
                        // Update the existing record
                        $existingRecord->update([
                            'image' => $imagePath,
                        ]);
                    } else {
                        // Create a new record
                        ProductColorImage::create([
                            'product_id' => $product->id,
                            'color_id' => $color->id,
                            'image' => $imagePath,
                        ]);
                    }
                }
            }

            DB::commit();
            return redirect()->back()->with('success', 'Images updated successfully.');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error("Error updating images: {$e->getMessage()}");
            return redirect()->back()->with('error', 'Failed to update images.');
        }

        return redirect()->back()->with('success', 'Color-wise images saved successfully!');
    }

}
