<div class="row product-grid-4">

    @foreach ($Newproducts as $newproduct)
    <div class="col-sm-6 col-lg-3">
        <div class="products-item">
            @php
            $thisProduct = $newproduct->id;
            $flag = 0;
            if ($campaign) {
            $camp_products = $campaign->camp_product;
            foreach ($camp_products as $key => $camp_product) {
            if ($thisProduct == $camp_product->product_id) {
            $camp_price = $camp_product->camp_price;
            $flag = 1;

            }
            }
            }
            @endphp
            <div class="top">
                <a class="product-type" href="#">@if($flag == 1)
                    <span class="sale">On Sale</span>

                    @else
                    <span class="new">New</span>

                    @endif</a>
                {{-- <a class="wishlist" href="#" wire:click.prevent="AddToWishlist({{$newproduct->id}})"
                    onclick="wishNotify()">
                    <i class="bx bx-heart"></i>
                </a> --}}
                <a href="{{route('product.detail',['slug'=>$newproduct->slug])}}">
                    @if($newproduct->product_images->isNotEmpty() && $newproduct->product_images->first())
                        <img src="{{ asset('storage/product_images/' . $newproduct->product_images->first()->product_image) }}" class="img-sm img-thumbnail" alt="{{ $newproduct->slug }}">
                    @endif
                    {{-- @foreach ($newproduct->product_thumbnail as $index => $image) --}}
                    {{-- @if($index == 0)
                    <img class="default-img"
                        src="{{asset('storage/product_images/thumbnail/'.$newproduct->product_thumbnail[0]->product_thumbnail)}}"
                        alt="{{$newproduct->slug}}">
                    @endif
                    @endforeach --}}

                </a>

                <div class="inner">
                    <h3>
                        <a
                            href="{{route('product.detail',['slug'=>$newproduct->slug])}}">{{$newproduct->product_name}}</a>
                    </h3>
                    @if($flag == 1)
                    <span class="text-primary">৳{{$camp_price}} </span>
                    <span class="text-dark"><del>৳{{$newproduct->regular_price}}</del></span>
                    <!--{{$flag}}-->
                    @elseif ($newproduct->product_price && $newproduct->product_price->offer_price > 0)
                    <span class=" d-flex ">
                        <span class="text-primary"><b>৳{{$newproduct->product_price->offer_price}}</b> </span>
                        <span class="text-dark ms-3"> <del>৳{{$newproduct->regular_price}}</del> </span>
                    </span>
                    <!--{{$flag}}-->

                    @else
                    <span class="text-primary">৳{{$newproduct->regular_price}} </span>
                    @endif
                </div>
            </div>
            @if($newproduct->product_stocks)
            @php
            $balance = $newproduct->product_stocks->sum('inStock') - $newproduct->product_stocks->sum('outStock')
            @endphp
            @endif

            <div class="bottom">
                @if($newproduct->balance > 0)
                {{-- <a class="cart-text" href="#" wire:click.prevent="store({{$newproduct->id}})" onclick="cartNotify()">Add
                    To Cart</a>
                <i class="bx bx-plus"></i> --}}
                <a class="cart-text" href="{{route('product.detail',['slug'=>$newproduct->slug])}}">View Details</a>
                <i class='bx bx-search-alt'></i>
                @else
                <p class="text-danger me-4">Out of stock</p>
                @endif
            </div>
        </div>
    </div>
    @endforeach
    <script>
        function cartNotify() {
            $.Notification.autoHideNotify('success', 'top right', 'Success', 'Product added to cart successfully');
        }

        function wishNotify() {
            $.Notification.autoHideNotify('success', 'bottom right', 'Success',
                'Product added to wishlist successfully');
        }

    </script>

</div>
