<?php

namespace App\Livewire;

use App\Models\Size;
use App\Models\Brand;
use App\Models\Color;
use Livewire\Component;
use App\Models\Campaign;
use App\Models\Category;
use App\Models\Products;
use Livewire\WithPagination;
use App\Models\Product_image;
use App\Models\ProductVariant;
use App\Models\ProductAttribute;
use Illuminate\Support\Facades\Auth;
use App\Http\Traits\ProductStockTrait;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;

class ShopComponent extends Component
{
    public $item_color;
    public $item_size;

    public function itemColor($colorId){
        $this->item_color = $colorId;
    }
    public function itemSize($sizeId){
        $this->item_size = $sizeId;
    }

    public function increaseQuantity($id)
    {
        $item = Cart::instance('cart')->get($id);
        $qty = $item->qty + 1;
        Cart::instance('cart')->update($id, $qty);
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }

    public function decreaseQuantity($id)
    {
        $item = Cart::instance('cart')->get($id);
        $qty = $item->qty - 1;
        Cart::instance('cart')->update($id,$qty);
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }
    public function removecart($id){
        Cart::instance('cart')->remove($id);
        Session::flash('success','Product removed from cart.');
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }

    public function store($id)
    {
        $product = Products::find($id);
        $item_name = $product->product_name;
        $offer_price = $product->product_price->offer_price;

         // Set default color and size if not selected
         if (!$this->item_color || !$this->item_size) {
            $firstVariant = $product->variants->first();
            $this->item_color = $firstVariant->attributes->firstWhere('attribute.name', 'Color')->attribute->value ?? null;
            $this->item_size = $firstVariant->attributes->firstWhere('attribute.name', 'Size')->attribute->value ?? null;
        }


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

        $item_slug = $product->slug;
        $item_image = Product_image::where('product_id',$id)->select('product_image')->first();
        Cart::instance('cart')->add($id,$item_name,1,$item_price,
        [
            'image' => $item_image,
            'slug' => $item_slug,
            'color' => $this->item_color,
            'size' => $this->item_size
        ]);
        Session::flash('success','Product added To cart.');
        $this->dispatch('cartRefresh')->to('cart-icon-component');
    }

    public function AddToWishlist($id){

        $product = Products::find($id);

        $item_name = $product->product_name;
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
        $item_slug = $product->slug;
        $data = Cart::instance('wishlist')->add($id,$item_name,1,$item_price, ['slug' => $item_slug]);

        Session::flash('success','Product added To wishlist.');
        // return redirect()->route('shop.cart');

        $this->dispatch('cartRefresh')->to('wishlist-icon-component');
    }

    public $selectedColors = [], $colorBadge = [];
    public $selectedSizes = [], $sizeBadge = [];
    public $perPage = 12;
    // public $products,
    public $groupedCategories ;
    public $selectedBadges = [];
    public $selectedCategory ;
    public $selectedBrand ;
    // public $priceRange = [0, 10000]; // Initial price range

    public $min_value = 0;
    public $max_value = 10000;

    public function mount()
    {
        $this->selectedSizes = [];
        $this->selectedColors = [];

    }
    use WithPagination;
    use ProductStockTrait;

    public function changePerPage($value)
    {
        $this->perPage = $value;
    }

    public function render()
    {

        $productsQuery = Products::query();

        //  // Apply category filter if selected
        if ($this->selectedCategory) {
            // Assuming you have a relationship between products and categories
            $productsQuery->whereHas('category', function ($query) {
                $query->where('category_name', $this->selectedCategory);
            });
        }

        if ($this->selectedBrand) {
            // Assuming you have a relationship between products and categories
            $productsQuery->whereHas('brand', function ($query) {
                $query->where('brand_name', $this->selectedBrand);
            });
        }

        // Apply color filter if selected
        if (!empty($this->selectedColors)) {
            $productatributes = ProductAttribute::where('value', $this->selectedColors)->get();
            $productIds = $productatributes->pluck('product_id');
            $productsQuery = $productsQuery->whereIn('id', $productIds);
        }

        // Apply size filter if selected
        if (!empty($this->selectedSizes)) {

            $productatributes = ProductAttribute::where('value', $this->selectedSizes)->get();
            $productIds = $productatributes->pluck('product_id');
            // Apply the filter to the products query
            $productsQuery = $productsQuery->whereIn('id', $productIds);
        }

        $colors = Color::whereIn('id', function ($query) {
            $query->select('value')
                  ->from('product_attributes')
                  ->where('name', 'Color');
        })->get();
        $sizes = Size::whereIn('id', function ($query) {
            $query->select('value')
                  ->from('product_attributes')
                  ->where('name', 'Size');
        })->get();

        // dd($sizes);
        // $sizes = Size::all();

        if ($this->min_value > 0 || $this->max_value < 10000) {
            $productsQuery->whereBetween('regular_price', [$this->min_value, $this->max_value]);
        }

        $this->groupedCategories = $this->getGroupedCategories();

        if(Auth::guard('customer')->check()){

            Cart::instance('wishlist')->store(Auth::guard('customer')->user()->email);
        }

        $campaign = Campaign::where('status','Published')->first();


        $products = $productsQuery->paginate($this->perPage);
        // dd($products);
        foreach ($products as $product) {

            $product->stock = $this->getProductStock($product->id);

            $inStock = $product->stock->sum('inStock');
            $soldQuantity = $product->stock->sum('outStock');

            $product->inStock = $inStock;
            $product->balance =  $inStock - $soldQuantity;
        }
        $categories = Category::with('children')->whereNull('parent_category')->get();

        $brands = Brand::all();


        return view('livewire.shop-component', [
            'products' => $products,
            'groupedCategories' => $this->groupedCategories,
            'colors' => $colors,
            'sizes' => $sizes,
            'campaign' => $campaign,
            'categories' => $categories,
            'brands' => $brands,
        ]);
    }

    // protected function getFilteredProducts()
    // {
    //     return Products::whereBetween('regular_price', [$this->min_value, $this->max_value])->get();
    // }


    public function applyCategoryFilter($categoryName)
    {
        $this->selectedCategory = $categoryName;
        $this->updateSelectedBadges();
    }

    public function removeCategoryFilter()
    {
        $this->selectedCategory = null;
    }

    public function applyBrandsFilter($brandName)
    {
        $this->selectedBrand = $brandName;
        $this->updateSelectedBadges();
    }

    public function removeBrandsFilter()
    {
        $this->selectedBrand = null;
    }

    public function applyColorFilter($colorId)
    {
        if (in_array($colorId, $this->selectedColors)) {
            // Remove the color if already selected
            $this->selectedColors = array_diff($this->selectedColors, [$colorId]);
        } else {
            // Add the color if not selected
            $this->selectedColors[] = $colorId;
        }

        $this->updateSelectedBadges();
    }

    public function applySizeFilter($sizeId)
    {
        // dd($sizeId);
        if (in_array($sizeId, $this->selectedSizes)) {
            // Remove the size if already selected
            $this->selectedSizes = array_diff($this->selectedSizes, [$sizeId]);
        } else {
            // Add the size if not selected
            $this->selectedSizes[] = $sizeId;
        }

        // dd($this->selectedSizes);

        $this->updateSelectedBadges();
    }

    public function removeBadge($badge)
    {
        // Remove the selected color or size
        $colorNames = Color::whereIn('color_name', [$badge])->pluck('id')->toArray();
        $sizeNames = Size::whereIn('size_name', [$badge])->pluck('id')->toArray();

        // Use array_diff to remove the selected color or size
        $this->selectedColors = array_diff($this->selectedColors, $colorNames);
        $this->selectedSizes = array_diff($this->selectedSizes, $sizeNames);

        // Remove the selected category by name
        if ($badge === $this->selectedCategory) {
            $this->selectedCategory = null;
        }
        if ($badge === $this->selectedBrand) {
            $this->selectedBrand = null;
        }

        // Update the selected badges
        $this->updateSelectedBadges();
    }


    private function updateSelectedBadges()
    {
        $categoryBadge = $this->selectedCategory ? [$this->selectedCategory] : [];
        $brandBadge = $this->selectedBrand ? [$this->selectedBrand] : [];
        $colorNames = Color::whereIn('id', $this->selectedColors)->pluck('color_name')->toArray();
        $sizeNames = Size::whereIn('id', $this->selectedSizes)->pluck('size_name')->toArray();
        $this->selectedBadges = array_merge($colorNames, $sizeNames, $categoryBadge,$brandBadge);
    }

    private function getGroupedCategories()
    {
        $categories = Category::all();
        $groupedCategories = [];

        foreach ($categories as $category) {
            // Get the product count for parent categories (without children)
            if (!$category->parent_category) {
                // Calculate the product count for the parent category
                $productCount = $this->getChildren($category->category_name);
                // Store the parent category with its product count
                $groupedCategories[$category->category_name] = [
                    'product_count' => $productCount,
                    'children' => []
                ];
            } else {
                // For child categories, group them under the parent category
                $productCount = $this->getChildren($category->category_name);
                $groupedCategories[$category->parent_category]['children'][] = [
                    'category_name' => $category->category_name,
                    'product_count' => $productCount
                ];
            }
        }

        return $groupedCategories;
    }

    private function getChildren($categoryName)
    {
        // Find the category ID for the given category name
        $categoryId = Category::where('category_name', $categoryName)->first()->id;

        // Count the number of products in this category using the category ID
        $productCount = Products::where('category_id', $categoryId)->count();

        return $productCount;
    }


}
