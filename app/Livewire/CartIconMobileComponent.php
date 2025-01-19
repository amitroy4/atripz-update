<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;

class CartIconMobileComponent extends Component
{

    public function increaseQuantity($id)
    {
        $item = Cart::instance('cart')->get($id);
        $qty = $item->qty + 1;
        Cart::instance('cart')->update($id, $qty);
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }

    public function decreaseQuantity($id)
    {
        $item = Cart::instance('cart')->get($id);
        $qty = $item->qty - 1;
        Cart::instance('cart')->update($id,$qty);
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');

    }
    public function removecart($id){
        Cart::instance('cart')->remove($id);
        Session::flash('success','Product removed from cart.');
        $this->dispatch('cartRefresh')->to('cart-icon-mobile-component');
    }

    #[On('cartRefresh')]

    public function render()
    {
        return view('livewire.cart-icon-mobile-component');
    }
}
