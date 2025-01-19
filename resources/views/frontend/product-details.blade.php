@extends('layouts.home')
@section('title', $product->product_name)
@section('meta_title', $product->product_name)
@php
$description = strip_tags($product->description)
@endphp
@section('meta_description', $description)
@section('meta_url',asset('products/'.$product->slug))
@section('main')




<style>
    /* .slick-list {
        height: 570px !important;
    } */

    .top-img {
        width: 160px;
    }

    .product-img--main {
        position: relative;
        overflow: hidden;
        /* margin-bottom: 30px; */
        width: 600px;
        height: 600px;
        float: left;
        margin: 10px;
    }

    .product-img--main::after {
        position: absolute;
        font-size: 3rem;
        color: #333;
    }

    .product-img--main__image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        -webkit-transition: -webkit-transform .5s ease-out;
        transition: -webkit-transform .5s ease-out;
        transition: transform .5s ease-out;
        transition: transform .5s ease-out, -webkit-transform .5s ease-out;
    }

    .quick-box {
        border: 2px solid #B2BEB5;
        padding: 10px;
    }

    .attr-color,
    .attr-size {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }

    .tagsocial li :hover {
        color: blue;
    }

</style>
<div class="product-details-area ptb-100">
    <div class="container">

        @livewire('product-component', ['slug' => $product->slug], key($product->slug))
        {{-- <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="outer">
                        <div class="row">
                            <div class="col-sm-2 col-lg-2">
                                <div class="products-nav">
                                    <div class="item">
                                        <div class="top-img align-middle">
                                            <img src="{{asset('')}}frontend/assets/images/p-1.jpeg" alt="Product">
    </div>
</div>
<div class="item">
    <div class="top-img">
        <img src="{{asset('')}}frontend/assets/images/p-2.png" alt="Product">
    </div>
</div>
<div class="item">
    <div class="top-img ">
        <img src="{{asset('')}}frontend/assets/images/p-3.jpeg" alt="Product">
    </div>
</div>
<div class="item">
    <div class="top-img">
        <img src="{{asset('')}}frontend/assets/images/p-4.jpeg" alt="Product">
    </div>
</div>
<div class="item">
    <div class="top-img">
        <img src="{{asset('')}}frontend/assets/images/p-5.jpeg" alt="Product">
    </div>
</div>
</div>
</div>
<div class="col-sm-10 col-lg-10 mt-2">
    <div class="product-preview">
        <div class="item">
            <div class="product-img--main" data-scale="2" data-image="{{asset('')}}frontend/assets/images/p-1.jpeg"
                style="width: 555.984px;">
            </div>
        </div>
        <div class="item">
            <div class="product-img--main" data-scale="2" data-image="{{asset('')}}frontend/assets/images/p-2.png"
                style="width: 555.984px;">
            </div>
        </div>
        <div class="item">
            <div class="product-img--main" data-scale="2" data-image="{{asset('')}}frontend/assets/images/p-3.jpeg"
                style="width: 555.984px;">
            </div>
        </div>
        <div class="item">
            <div class="product-img--main" data-scale="2" data-image="{{asset('')}}frontend/assets/images/p-4.jpeg"
                style="width: 555.984px;">
            </div>
        </div>
        <div class="item">
            <div class="product-img--main" data-scale="2" data-image="{{asset('')}}frontend/assets/images/p-5.jpeg"
                style="width: 555.984px;">
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<div class="col-lg-6">
    <div class="top-content">
        <h2 class="product-title-1">SAMSUNG Galaxy S24 Ultra 5G Titanium Black (12 GB RAM 512 GB)</h2>
        <ul class="reviews">
            <li class="">
                <span class="offer-price">৳ 400.00</span>
                <span class="real-price">৳ 600.00</span>
            </li>
        </ul>
        <div class="card">
            <div class="card-body">
                <div class="short-desc">
                    <h4 class="quick-title">Quick Overview</h4>
                    <ul class="product-more-infor mt-10">
                        <li><span>Chipset</span>Qualcomm SM8650-AC Snapdragon 8 Gen 3 (4 nm)</li>
                        <li><span>Display</span>6.8 inches Dynamic LTPO AMOLED 2X</li>
                        <li><span>Camera</span>200MP+50MP+10MP+12MP</li>
                        <li><span>fingerprint</span>In-Display fingerprint sensor</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="varient-box">
            <div class="color-varient">
                <h4 class="color-varient-title">Color</h4>
                <ul class="color-varient-list color-filter">
                    <li>
                        <div class="color-option bg-black">
                            <span class=""></span>
                        </div>
                        <p class="color-stock-preview">11
                            Items Left
                        </p>
                    </li>
                    <li>
                        <div class="color-option bg-primary">
                            <span class=""></span>
                        </div>
                        <p class="color-stock-preview">11
                            Items Left
                        </p>
                    </li>
                    <li>
                        <div class="color-option bg-secondary">
                            <span class=""></span>
                        </div>
                        <p class="color-stock-preview">11
                            Items Left
                        </p>
                    </li>
                    <li>
                        <div class="color-option bg-info">
                            <span class=""></span>
                        </div>
                        <p class="color-stock-preview">11
                            Items Left
                        </p>
                    </li>
                </ul>
            </div>
            <div class="size-varient">
                <h4 class="size-varient-title">Storage</h4>
                <ul class="size-varient-list size-filter" id="sizeOptions" wire:ignore="">
                    <li class="" wire:ignore="">
                        <div class="size-option" data-size="S" wire:click="itemSize(40)">
                            <span>8/128GB</span>
                        </div>
                        <p wire:ignore="" class="size-stock-preview"> 2
                            Items
                        </p>
                    </li>
                    <li class="" wire:ignore="">
                        <div class="size-option" data-size="M" wire:click="itemSize(41)">
                            <span>8/256GB</span>
                        </div>
                        <p wire:ignore="" class="size-stock-preview"> 2 Items</p>
                    </li>
                    <li class="" wire:ignore="">
                        <div class="size-option" data-size="L" wire:click="itemSize(42)">
                            <span>12/256GB</span>
                        </div>
                        <p wire:ignore="" class="size-stock-preview"> 4 Items</p>
                    </li>
                    <li class="" wire:ignore="">
                        <div class="size-option" data-size="XL" disabled="" wire:click="itemSize(43)">
                            <span>16/512GB</span>
                        </div>
                        <p wire:ignore="" class="size-stock-preview"> 0 Items</p>
                    </li>
                </ul>
            </div>
            <div class="buttons">
                <ul class="buttons-list">
                    <li>
                        <ul class="number">
                            <li>
                                <span class="minus">-</span>
                                <input type="text" value="1">
                                <span class="plus">+</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="common-btn buy-now-btn" href="#">
                            <i class='bx bxs-shopping-bag'></i> Buy Now
                        </a>
                    </li>
                    <li>
                        <a class="common-btn ad-cart-btn" href="#">
                            Add To Cart <i class='bx bxs-cart-add'></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="product-tag-info">
            <ul class="product-meta">
                <li class=""><strong>Availability:</strong> <span class="in-stock ">Not Available</span>
                </li>
                <li class="mr-tp"><strong>EMI:</strong> <span class="in-stock ">Not Available</span>
                </li>
            </ul>
            <ul class="product-meta">
                <li class=""><strong>SKU:</strong> <span class="in-stock ">SPLT-5G</span></li>
                <li class="mr-tp"><strong>Tags:</strong> <span class="in-stock ">SPLT-5G</span></li>
            </ul>
        </div>
        <div class="social-links mt-3">
            <ul>
                <li class="fs-5 m-2"><i class="fa-solid fa-share-nodes"></i></li>
                <li>
                    <a href="https://www.facebook.com/" target="_blank">
                        <i class="bx bxl-facebook"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.twitter.com/" target="_blank">
                        <i class="bx bxl-twitter"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.linkedin.com/" target="_blank">
                        <i class="bx bxl-linkedin"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.skype.com/" target="_blank">
                        <i class="bx bxl-skype"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.youtube.com/" target="_blank">
                        <i class="bx bxl-youtube"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
</div> --}}



{{--
<div class="col-lg-4">
    <div class="card right-related-product">
        <div class="card-header bg-white">
            <h3>Related Products</h3>
        </div>
        @foreach ($realatedProducts as $r_product)
        <ul class="align-items-center">
            <li>
                <a href="{{route('product.detail',['slug'=>$r_product->slug])}}">
@if($r_product->product_images->isNotEmpty() && $r_product->product_images->first())
<img src="{{ asset('storage/product_images/' . $r_product->product_images->first()->product_image) }}"
    class="img-sm img-thumbnail" alt="{{ $r_product->slug }}">
@endif
</a>
</li>
@php
$flag = 0;
$thisProduct = $r_product->id;
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
<li>
    <h4><a href="{{route('product.detail',['slug'=>$r_product->slug])}}">{{$r_product->product_name}}</a>
    </h4>
    <div class="d-flex">
        @if($flag == 1)
        <span>৳{{$camp_price}} </span>
        <span class="main-price">৳{{$r_product->regular_price}}</span>

        @elseif ($r_product->product_price != null && $r_product->product_price->offer_price
        > 0 && $flag == 0)

        <span>৳ {{$r_product->product_price->offer_price}}</span>
        <p class="main-price">৳ {{$r_product->regular_price}}</p>
        @else
        <span>৳{{$r_product->regular_price}}</span>
        @endif
    </div>

    <a class="common-btn small-buy-btn" href="#" wire:click.prevent="store({{$r_product->id}})">Buy
        Now</a>
</li>
</ul>
@endforeach
</div>
</div> --}}


</div>
</div>
</div>
<!-- End Single Product -->
<div class="products-area pb-70">
    <div class="container">
        <!-- Modal -->
        <div class="modal fade" id="chartModal" tabindex="-1" aria-labelledby="chartModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="chartModalLabel">Chart</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12 d-flex pt-2 pb-4">
                            <div class="col-4 d-flex justify-content-center">
                                <img src="{{asset('')}}frontend/assets/images/p4.avif" alt="Image"
                                    style="width: 170px;">
                            </div>
                            <div class="col-8 d-flex flex-column justify-content-center">
                                <p class="mb-0 fs-3 fw-bold">White Comfy Stool</p>
                                <p class="mb-0 p-0 fs-5">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                                <div class="pt-0 pb-1">
                                    <span class="text-primary fs-4">৳400.00</span>
                                    <span class="ps-2 text-secondary-emphasis"><del>৳600.00</del></span>
                                </div>
                            </div>
                        </div>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                    data-bs-target="#home-tab-pane" type="button" role="tab"
                                    aria-controls="home-tab-pane" aria-selected="true">Product</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                    data-bs-target="#profile-tab-pane" type="button" role="tab"
                                    aria-controls="profile-tab-pane" aria-selected="false">How To Measure</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active mt-4 mb-4" id="home-tab-pane" role="tabpanel"
                                aria-labelledby="home-tab" tabindex="0">
                                <div class="row">
                                    <div class="col-12 d-flex align-items-center">
                                        <div class="col-12 table-responsive">
                                            <table class="table table-bordered table-striped text-center">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>Select</th>
                                                        <th>Size</th>
                                                        <th>Length (inches)</th>
                                                        <th>Chest (inches)</th>
                                                        <th>Shoulder (inches)</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="sizeTable">
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">S</td>
                                                        <td class="custom-th-text">26</td>
                                                        <td class="custom-th-text">34-36</td>
                                                        <td class="custom-th-text">18</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">M</td>
                                                        <td class="custom-th-text">27</td>
                                                        <td class="custom-th-text">38-40</td>
                                                        <td class="custom-th-text">20</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">L</td>
                                                        <td class="custom-th-text">28</td>
                                                        <td class="custom-th-text">42-44</td>
                                                        <td class="custom-th-text">22</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">XL</td>
                                                        <td class="custom-th-text">29</td>
                                                        <td class="custom-th-text">46-48</td>
                                                        <td class="custom-th-text">24</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">XXL</td>
                                                        <td class="custom-th-text">30</td>
                                                        <td class="custom-th-text">50-52</td>
                                                        <td class="custom-th-text">26</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="custom-th-text">
                                                            <input type="radio" name="size" class="form-check-input"
                                                                onclick="highlightRow(this)">
                                                        </td>
                                                        <td class="custom-th-text">XXXL</td>
                                                        <td class="custom-th-text">31</td>
                                                        <td class="custom-th-text">54-56</td>
                                                        <td class="custom-th-text">28</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade mt-4 mb-4" id="profile-tab-pane" role="tabpanel"
                                aria-labelledby="profile-tab" tabindex="0">
                                <div class="row">
                                    <div class="col-12 d-flex">
                                        <div class="col-12 d-flex justify-content-center">
                                            <img src="{{asset('')}}frontend/assets/images/measurement-men.jpg"
                                                alt="Image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    @endsection

    {{-- @push('viewItem')
    <script>
        // Assuming $product contains the product array from your Laravel backend
        var product = @json($product);

        // Clear the previous ecommerce object
        dataLayer.push({
            ecommerce: null
        });

        // Push new ecommerce data to dataLayer
        dataLayer.push({
            event: "view_item",
            ecommerce: {
                currency: "BDT",
                value: {
                    {
                        $product['regular_price']
                    }
                }, // Assuming regular_price is present in your product array
                items: [{
                    item_id: "{{ $product['sku'] }}", // Assuming sku is present in your product array
    item_name: "{{ $product['product_name'] }}", // Assuming product_name is present in your product array
    item_brand: "{{ $product['brand']['brand_name'] }}", // Assuming brand_name is present in your product array
    item_category: "{{ $product['category']['category_name'] }}", // Assuming category_name is present in your product
    array
    // Add other item properties as needed
    price: {
    {
    $product['regular_price']
    }
    }, // Assuming regular_price is present in your product array
    quantity: 1 // Assuming quantity is always 1 for view_item event
    }]
    }
    });

    </script>

    @endpush --}}
    @push('dashboard')
    <script>
        $(document).ready(function () {

            $('.product-preview').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                asNavFor: '.products-nav'
            });
            $('.products-nav').slick({
                slidesToShow: 3,
                slidesToScroll: 1,
                asNavFor: '.product-preview',
                centerPadding: '20px',
                dots: false,
                centerMode: true,
                focusOnSelect: true,
                vertical: true,
                verticalSwiping: true,
                arrows: true,
            });

            $('.color-option').on('click', function (event) {
                event.preventDefault(); // Prevent default anchor behavior

                var selectedColor = $(this).data('color'); // Get the selected color ID
                var colorStockPreview = $('.color-stock-preview');

                // Toggle stock balance for the selected color
                var stockPreview = $(this).siblings('.color-stock-preview');

                if (stockPreview.is(':visible')) {
                    stockPreview.fadeOut(); // Hide if already visible
                } else {
                    colorStockPreview.hide(); // Hide all stock previews
                    stockPreview.fadeIn(); // Show the stock preview of the selected color
                }
            });

            $('.size-option').on('click', function (event) {
                event.preventDefault(); // Prevent default anchor behavior

                var selectedsize = $(this).data('size'); // Get the selected size ID
                var sizeStockPreview = $('.size-stock-preview');

                // Toggle stock balance for the selected size
                var stockPreview = $(this).siblings('.size-stock-preview');

                if (stockPreview.is(':visible')) {
                    stockPreview.fadeOut(); // Hide if already visible
                } else {
                    sizeStockPreview.hide(); // Hide all stock previews
                    stockPreview.fadeIn(); // Show the stock preview of the selected size
                }
            });
        });

    </script>
    @endpush
