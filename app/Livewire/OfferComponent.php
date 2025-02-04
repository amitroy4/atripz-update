<?php

namespace App\Livewire;

use App\Models\Offer;
use Livewire\Component;
use App\Models\Campaign;
use App\Models\Products;
use Livewire\WithPagination;
use App\Models\Product_image;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;

class OfferComponent extends Component
{

    public $perPage = 12;
    public $id;

    public function store($id)
    {
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

        // $item_price = $product->regular_price;
        // $size = $product->sizes[0]->id;
        // if($product->colors){
        //     $color = $product->colors[0]->id;
        // }
        // else{
        //     $color = null;
        // }

        $item_slug = $product->slug;
        $item_image = Product_image::where('product_id',$id)->select('product_image')->first();
        Cart::instance('cart')->add($id,$item_name,1,$item_price, ['image' => $item_image,'slug' => $item_slug]);

        Session::flash('success','Product added To cart.');
        // return response()->json($data);
        // return redirect()->route('shop.cart');
        $this->dispatch('cartRefresh')->to('cart-icon-component');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
            // print_r($offer_price);
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

    use WithPagination;

    public function changePerPage($value)
    {
        $this->perPage = $value;
    }

    public function render()
    {
        if(Auth::guard('customer')->check()){

            Cart::instance('wishlist')->store(Auth::guard('customer')->user()->email);

        }

        $campaign = Campaign::where('status','Published')->first();

        $products = Products::paginate($this->perPage);

        $offer = Offer::findOrFail($this->id);

        return view('livewire.offer-component',[
            'products' => $products,
            'campaign' => $campaign,
            'offer' => $offer,
        ]);
    }
}
