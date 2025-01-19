
<div class="products-area">
    <div class="container">
        <div class="section-top text-center">
            <h4 class="section-title">All Products</h4>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div id="Container" class="row justify-content-center">
                    {{-- <div class="col-sm-6 col-lg-3 mix armchair center-table">
                        <div class="products-item">
                            <div class="top">
                                <a class="wishlist" href="#">
                                    <i class="bx bx-heart"></i>
                                </a>
                                <img src="{{asset('')}}frontend/assets/images/p1.avif" alt="Products">
                                <div class="inner">
                                    <h3>
                                        <a href="product-details.php">TOMFORD A2281 Mastercopy</a>
                                    </h3>
                                    <span>৳200.00</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <a class="cart-text" href="#">Add To Cart</a>
                                <i class="bx bx-plus"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3 mix book sofa">
                        <div class="products-item">
                            <div class="top">
                                <a class="wishlist" href="#">
                                    <i class="bx bx-heart"></i>
                                </a>
                                <img src="{{asset('')}}frontend/assets/images/p6.avif" alt="Products">
                                <div class="inner">
                                    <h3>
                                        <a href="product-details.php">Louis Vuiton Sunglasses</a>
                                    </h3>
                                    <span>৳120.00</span>
                                </div>
                            </div>
                            <div class="bottom">
                                <a class="cart-text" href="#">Add To Cart</a>
                                <i class="bx bx-plus"></i>
                            </div>
                        </div>
                    </div> --}}

                    <div>
                        <div class="new-arrival">
                            <div class="row product-grid-4">
                                @foreach ($products as $product)
                                <div class="col-sm-6 col-lg-3 mix {{$product->category->categories_id}}">
                                    <div class="products-item">
                                        @php
                                            $thisProduct = $product->id;
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
                                            {{-- <a class="product-type" href="#">@if($flag == 1)
                                                <span class="sale">On Sale</span>

                                                @else
                                                <span class="new">New</span>

                                                @endif</a> --}}
                                            {{-- <a class="wishlist" href="#" wire:click.prevent="AddToWishlist({{$product->id}})"
                                                onclick="wishNotify()">
                                                <i class="bx bx-heart"></i>
                                            </a> --}}
                                            <a href="{{route('product.detail',['slug'=>$product->slug])}}">
                                                @if($product->product_images->isNotEmpty() && $product->product_images->first())
                                                    <img src="{{ asset('storage/product_images/' . $product->product_images->first()->product_image) }}" class="img-sm img-thumbnail" alt="{{ $product->slug }}">
                                                @endif
                                                {{-- @foreach ($product->product_thumbnail as $index => $image) --}}
                                                {{-- @if($index == 0)
                                                <img class="default-img"
                                                    src="{{asset('storage/product_images/thumbnail/'.$product->product_thumbnail[0]->product_thumbnail)}}"
                                                    alt="{{$product->slug}}">
                                                @endif
                                                @endforeach --}}
                                            </a>
                                            <div class="inner">
                                                <h3>
                                                    <a
                                                        href="{{route('product.detail',['slug'=>$product->slug])}}">{{$product->product_name}}</a>
                                                </h3>
                                                @if($flag == 1)
                                                <span class="text-primary">৳{{$camp_price}} </span>
                                                <span class="text-dark"><del>৳{{$product->regular_price}}</del></span>
                                                <!--{{$flag}}-->
                                                @elseif ($product->product_price && $product->product_price->offer_price > 0)
                                                <span class=" d-flex ">
                                                    <span class="text-primary"><b>৳{{$product->product_price->offer_price}}</b> </span>
                                                    <span class="text-dark ms-3"> <del>৳{{$product->regular_price}}</del> </span>
                                                </span>
                                                <!--{{$flag}}-->

                                                @else
                                                <span class="text-primary">৳{{$product->regular_price}} </span>
                                                @endif
                                            </div>
                                        </div>
                                        @if($product->product_stocks)
                                        @php
                                        $balance = $product->product_stocks->sum('inStock') - $product->product_stocks->sum('outStock')
                                        @endphp
                                        @endif

                                        <div class="bottom">
                                            @if($product->balance > 0)
                                            {{-- <a class="cart-text" href="#" wire:click.prevent="store({{$product->id}})" onclick="cartNotify()">View Details</a> --}}
                                            {{-- <i class="bx bx-plus"></i> --}}
                                            <a class="cart-text" href="{{route('product.detail',['slug'=>$product->slug])}}">View Details</a>
                                            <i class='bx bx-search-alt'></i>
                                            @else
                                            <p class="text-danger me-4">Out of stock</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>

                            <!--End product-grid-4-->
                        </div>
                        <!--End tab-content-->

                        <div class="row mt-30">
                            <div class="col-12 text-center mb-4">
                                <span wire:loading.delay>
                                    <button class="btn" type="button" disabled>
                                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                                        Loading...
                                      </button>
                                </span>
                            </div>
                            <div class="text-center mt-2">
                                <a class="common-btn custom-btn-1" href="#" wire:click.prevent="loadMore()">
                                    More Products...
                                    <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                                    <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                                </a>
                            </div>
                        </div>


                       <script>

                            function cartNotify(){
                                $.Notification.autoHideNotify('success', 'top right', 'Success', 'Product added to cart successfully');
                            }

                             function wishNotify(){
                                $.Notification.autoHideNotify('success', 'bottom right', 'Success', 'Product added to wishlist successfully');
                            }

                        </script>

                    </div>
                </div>

            </div>
        </div>

    </div>
</div>





