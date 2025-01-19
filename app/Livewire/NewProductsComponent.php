<?php

namespace App\Livewire;

use App\Http\Traits\ProductStockTrait;
use Livewire\Component;
use App\Models\Campaign;
use App\Models\Color;
use App\Models\order_items;
use App\Models\Products;
use App\Models\Product_image;
use App\Models\Size;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;


class NewProductsComponent extends Component
{
    use ProductStockTrait;

    public $item_color;
    public $item_size;

    public function itemColor($colorId){
        $this->item_color = $colorId;
    }
    public function itemSize($sizeId){
        $this->item_size = $sizeId;
    }

    public $Newproducts = [];

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
        $data = Cart::instance('cart')->add($id,$item_name,1,$item_price,
        [
            'image' => $item_image,
            'slug' => $item_slug,
            'color' => $this->item_color,
            'size' => $this->item_size
        ]);
        Session::flash('success','Product added To cart.');
        // return redirect()->route('shop.cart');
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');

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

    public function render()
    {
        $this->Newproducts = Products::with([
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
            'product_stocks'
        ])->where('status','active')->latest('created_at')->take(8)->get();

        foreach ($this->Newproducts as $product) {

            $product->stock = $this->getProductStock($product->id);

            $inStock = $product->stock->sum('inStock');
            $soldQuantity = $product->stock->sum('outStock');

            $product->inStock = $inStock;
            $product->balance =  $inStock - $soldQuantity;
        }

         if(Auth::guard('customer')->check()){
            Cart::instance('wishlist')->store(Auth::guard('customer')->user()->email);
        }
        $campaign = Campaign::where('status','Published')->first();

        return view('livewire.new-products-component',[
            'Newproducts' => $this->Newproducts,
            'campaign' => $campaign,
        ]);
    }

}
