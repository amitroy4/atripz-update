@extends('layouts.home')
@section('title', 'Home')
@section('main')

<style>


</style>

<!-- Banner -->
<div class="banner-area-two">
    <div class="banner-slider owl-theme owl-carousel owl-loaded owl-drag">
        <div class="owl-stage-outer">
            <div class="owl-stage" style="transform: translate3d(-3376px, 0px, 0px); transition: 1s; width: 10128px;">
                @foreach ($sliders as $slider)
                <div class="owl-item cloned" style="width: 1673px; margin-right: 15px;">
                    <div class="banner-item" style="background-image: url('{{asset('storage/'.$slider->image)}}'); background-repeat:no-repeat; background-size:cover"></div>
                </div>
                @endforeach
            </div>
        </div>
        <div class="owl-nav one"><button type="button" role="presentation" class="owl-prev"><i
                    class="bx bx-left-arrow-alt"></i></button><button type="button" role="presentation"
                class="owl-next"><i class="bx bx-right-arrow-alt"></i></button></div>
        <div class="owl-dots disabled"></div>
        <div class="owl-thumbs"></div>
    </div>
</div>
<!-- End Banner -->

<!-- Support -->
<div class="support-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-6 col-lg-4">
                <div class="support-item ">
                    <i class='bx bxs-truck'></i>
                    <h3>Free Shipping</h3>
                    <p>Available on all our products</p>
                    {{-- <img src="{{asset('')}}frontend/assets/images/support-shape1.png" alt="Shape"> --}}
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="support-item">
                    <i class='bx bx-package'></i>
                    <h3>Safe Delivery</h3>
                    <p>Safe delivery at your doorstep</p>
                    {{-- <img src="{{asset('')}}frontend/assets/images/support-shape1.png" alt="Shape"> --}}
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="support-item">
                    <i class='bx bxs-phone-call' ></i>
                    <h3>Enquiry</h3>
                    <p>Got a question?Look no further call us.</p>
                    {{-- <img src="{{asset('')}}frontend/assets/images/support-shape1.png" alt="Shape"> --}}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Support -->

<!-- Buy -->
<div class="buy-area">
    @foreach ($adsbanner as $ads)
    @if($ads->is_featured == 1 && $ads->is_feature_no == 1 && $ads->status == 1)<div class="buy-shape">
        <img src="{{asset('')}}frontend/assets/images/shape3.png" alt="Shape">
    </div>
    <div class="container-fluid p-0">
        <div class="row m-0 align-items-center">
            <div class="col-lg-6 p-0">
                <div class="buy-img">
                    <img src="{{asset('storage/'.$ads->image)}}" alt="{{$ads->title}}">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="buy-content ptb-100">
                    <h2>{{$ads->header}}</h2>
                    <h4>{{$ads->title}}</h4>
                    {{-- <ul>
                                <li>৳160.00</li>
                                <li>
                                    <del>৳200.00</del>
                                </li>
                            </ul> --}}
                    @if($ads->shop_url != null)
                    <a class="common-btn custom-btn-1" href="{{$ads->shop_url}}">
                        Shop Now
                        <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                        <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                    </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
    {{-- @break --}}
    @endforeach
</div>
<!-- End Buy -->

<!-- Products -->
<div class="products-area two">
    <div class="container">
        <div class="section-top text-center">
            <h4 class="section-title"> New Arrivals</h4>
        </div>
        <div class="row">

            {{-- <div class="col-sm-6 col-lg-3">
                <div class="products-item">
                    <div class="top">
                        <a class="wishlist" href="#">
                            <i class="bx bx-heart"></i>
                        </a>
                        <img src="{{asset('')}}frontend/assets/images/p11.avif" alt="Products">
            <div class="inner">
                <h3>
                    <a href="product-details.php">Red AKG Headphones</a>
                </h3>
                <span>৳200.00</span>
            </div>
        </div>
        <div class="bottom">
            <a class="cart-text" href="#">Add To Cart</a>
            <i class="bx bx-plus"></i>
        </div>
    </div>
</div> --}}


@livewire('new-products-component')

</div>

<div class="text-center">
    <a class="common-btn custom-btn-1" href="{{route('shop')}}">
        Load More Products
        <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
        <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
    </a>
</div>

</div>
</div>
<!-- End Products -->






<!-- Buy -->
<div class="buy-area">
    @foreach ($adsbanner as $ads)
    @if($ads->is_featured == 1 && $ads->is_feature_no == 2  && $ads->status == 1)<div class="buy-shape">
        <img src="{{asset('')}}frontend/assets/images/shape3.png" alt="Shape">
    </div>
    <div class="container-fluid p-0">
        <div class="row m-0 align-items-center">
            <div class="col-lg-6 p-0">
                <div class="buy-img">
                    <img src="{{asset('storage/'.$ads->image)}}" alt="{{$ads->title}}">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="buy-content ptb-100">
                    <h2>{{$ads->header}}</h2>
                    <h4>{{$ads->title}}</h4>
                    {{-- <ul>
                                <li>৳160.00</li>
                                <li>
                                    <del>৳200.00</del>
                                </li>
                            </ul> --}}
                    @if($ads->shop_url != null)
                    <a class="common-btn custom-btn-1" href="{{$ads->shop_url}}">
                        Shop Now
                        <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                        <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                    </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
    {{-- @break --}}
    @endforeach
</div>
<!-- End Buy -->

<!-- All Products -->

@livewire('home-component')
<!-- End All Products -->

<!-- Buy -->
<div class="buy-area">
    @foreach ($adsbanner as $ads)
    @if($ads->is_featured == 1 && $ads->is_feature_no == 3  && $ads->status == 1)<div class="buy-shape">
        <img src="{{asset('')}}frontend/assets/images/shape3.png" alt="Shape">
    </div>
    <div class="container-fluid p-0">
        <div class="row m-0 align-items-center">
            <div class="col-lg-6 p-0">
                <div class="buy-img">
                    <img src="{{asset('storage/'.$ads->image)}}" alt="{{$ads->title}}">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="buy-content ptb-100">
                    <h2>{{$ads->header}}</h2>
                    <h4>{{$ads->title}}</h4>
                    {{-- <ul>
                                <li>৳160.00</li>
                                <li>
                                    <del>৳200.00</del>
                                </li>
                            </ul> --}}
                    @if($ads->shop_url != null)
                    <a class="common-btn custom-btn-1" href="{{$ads->shop_url}}">
                        Shop Now
                        <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                        <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                    </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
    {{-- @break --}}
    @endforeach
</div>
<!-- End Buy -->
@endsection
