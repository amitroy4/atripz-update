<div>

    @if(Cart::instance('cart')->count() == 0)
    <a href="{{route('cart')}}" class="btn wishlist cart-popup-btn" >
        <i class="bx bxs-cart"></i>
        @if(Cart::instance('cart')->count() > 0)
        <span>{{Cart::count()}}</span>
        @endif
    </a>
    @else
    <a href="{{route('cart')}}" class="btn wishlist cart-popup-btn" >
        <i class="bx bxs-cart"></i>
        @if(Cart::instance('cart')->count() > 0)
        <span>{{Cart::count()}}</span>
        @endif
    </a>
    @endif

</div>
