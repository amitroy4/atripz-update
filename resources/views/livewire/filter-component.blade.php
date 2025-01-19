<div>

    <!-- Page Title -->
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <div class="title-content">
                        <h2>Category</h2>
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                <span>Filter</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        {{-- <div class="title-img">
            <img src="{{asset('')}}frontend/assets/images/page-title1.jpg" alt="About">
            <img src="{{asset('')}}frontend/assets/images/shape16.png" alt="Shape">
            <img src="{{asset('')}}frontend/assets/images/shape17.png" alt="Shape">
            <img src="{{asset('')}}frontend/assets/images/shape18.png" alt="Shape">
        </div> --}}
    </div>
    <!-- End Page Title -->
    <!-- Products -->
    <div class="products-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="card product-filter">
                        <div class="card-header">
                            <b>Filter</b>
                        </div>
                        <div class="accordion-item">
                            <p class="accordion-header mb-0" id="aset_Heading21439">
                                <span class="testacc accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#aset_Collapse21439">
                                    Brands <i class='bx bxs-chevron-down'></i>
                                </span>
                            </p>
                            <div id="aset_Collapse21439" class="accordion-collapse collapse show">
                                <div class="accordion-body filter-box">
                                    <div class="items" id="brandList">
                                        @if ($brands)
                                        @foreach($brands as $index => $brand)
                                        <div class="d-flex align-items-center filter-item {{ $index >= 5 ? 'd-none' : '' }}">
                                            <label class="filter">
                                                <div class="chk_attribute chk_attribute2139_0"
                                                    wire:click="applyBrandsFilter('{{ $brand->brand_name }}')"
                                                    {{-- id="exampleDiv{{$brands->id}}" --}} style="cursor: pointer;">
                                                    <span class="sort-att">{{$brand->brand_name}}</span>
                                                </div>
                                            </label>
                                        </div>
                                        @endforeach
                                        @endif
                                    </div>
                                    @if($brands->count() > 5)
                                    <a id="showMoreBtnBrandList" class="text-brand text-primary" style="cursor: pointer;">Show More</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <p class="accordion-header mb-0" id="aset_Heading2139">
                                <span class="testacc accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#aset_Collapse2139">
                                    Categories <i class='bx bxs-chevron-down'></i>
                                </span>
                            </p>
                            <div id="aset_Collapse2139" class="accordion-collapse collapse show">
                                <div class="accordion-body filter-box">
                                    <div class="items" id="groupList">
                                        @if ($groupedCategories)
                                        @foreach($groupedCategories as $parentCategory => $categoryData)
                                        <div class="d-flex align-items-center filter-item {{ $loop->index >= 5 ? 'd-none' : '' }}">
                                            <!-- Display Parent Category with Product Count -->
                                            <label class="filter">
                                                <div class="chk_attribute chk_attribute2139_0"
                                                     wire:click="applyCategoryFilter('{{ $parentCategory }}')"
                                                     style="cursor: pointer;">
                                                    <span class="sort-att">{{ $parentCategory }}</span>
                                                </div>
                                            </label>
                                            {{-- @if ($categoryData['product_count'] !== 0)
                                                <span class="filter-qty">
                                                    {{ $categoryData['product_count'] }}
                                                </span>
                                            @endif --}}

                                            <!-- Button for children categories -->
                                            @if(count($categoryData['children']) > 0)
                                                <button class="btn p-0" style="cursor: pointer;" data-bs-toggle="collapse" data-bs-target="#collapseChildren{{ $loop->index }}">
                                                    <b class="filter-qty px-2"><i class="fa-solid fa-plus"></i></b>
                                                </button>
                                            @endif
                                        </div>

                                        <!-- Dropdown for children categories -->
                                        @if(count($categoryData['children']) > 0)
                                            <div id="collapseChildren{{ $loop->index }}" class="collapse">
                                                @foreach($categoryData['children'] as $child)
                                                    <div class="chk_attribute chk_attribute2139_0 ms-4"
                                                         wire:click="applyCategoryFilter('{{ $child['category_name'] }}')"
                                                         style="cursor: pointer;">
                                                        <span class="sort-att">{{ $child['category_name'] }}</span>
                                                        {{-- @if ($child['product_count'] !== 0)
                                                            <span class="filter-qty">
                                                                {{ $child['product_count'] }}
                                                            </span>
                                                        @endif --}}
                                                    </div>

                                                @endforeach
                                            </div>
                                        @endif
                                    @endforeach

                                        @endif
                                    </div>

                                    @if(count($groupedCategories) > 5)
                                        <a id="showMoreBtnGroupList" class="text-brand" style="cursor: pointer;">Show More</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                        {{-- <div class="accordion-item">
                            <p class="accordion-header mb-0" id="aset_Heading2139">
                                <span class="testacc accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#aset_Collapse2149">
                                    Internal Storage <i class='bx bxs-chevron-down'></i>
                                </span>
                            </p>
                            <div id="aset_Collapse2149" class="accordion-collapse collapse show">
                                <div class="accordion-body filter-box">
                                    <div class="items" id="storageList">
                                        @if ($sizes)
                                        @foreach ($sizes as $index => $size)
                                        @if($size->status == 1)
                                        @php
                                        $sizeCount = DB::table('product_attributes')
                                        ->where('name', 'Size')
                                        ->where('value', $size->id)
                                        ->distinct('product_id')
                                        ->count('product_id');
                                        @endphp
                                        <div class="d-flex align-items-center filter-item {{ $index >= 5 ? 'd-none' : '' }}">
                                            <label class="filter">
                                                <div class="chk_attribute chk_attribute2139_0" data-title="2139_0"
                                                    wire:click.prevent="applySizeFilter({{ $size->id }})"
                                                    id="size_{{ $size->id }}" style="cursor: pointer;">
                                                    <span class="sort-att">
                                                        <span>{{ $size->size }}</span>
                                                    </span>
                                                </div>
                                            </label>
                                            <span class="filter-qty">{{$sizeCount}}</span>
                                        </div>
                                        @endif
                                        @endforeach
                                        @endif
                                    </div>
                                    @if(count($sizes) > 5)
                                    <a id="showMoreBtnStoragList" class="text-brand" style="cursor: pointer;">Show More</a>
                                    @endif
                                </div>
                            </div>
                        </div> --}}
                        <div class="accordion-item">
                            <p class="accordion-header mb-0" id="aset_Heading21359">
                                <span class="testacc accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#aset_Collapse21459">
                                    Color <i class='bx bxs-chevron-down'></i>
                                </span>
                            </p>
                            <div id="aset_Collapse21459" class="accordion-collapse collapse show">
                                <div class="accordion-body filter-box">
                                    <ul class="list-unstyled d-flex flex-wrap gap-2">
                                        @foreach ($colors as $color)
                                        @if($color->status == 1)
                                        <li>
                                            <a href="#" class="d-inline-block rounded-circle border border-dark p-2"
                                                style="background-color: {{ $color->color_code }}; width: 40px; height: 40px;"
                                                id="color_{{ $color->id }}" wire:model="selectedColors.{{ $color->id }}"
                                                wire:click="applyColorFilter({{ $color->id }})">
                                            </a>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>

                                    {{-- <div class="items">
                                        @foreach ($sizes as $size)
                                        @if($size->status == 1)
                                        <div class="d-flex align-items-center filter-item">
                                            <label class="filter">
                                                <input type="checkbox" class="chk chk_attribute chk_attribute2139_0"
                                                    data-title="2139_0" value="2139(a_s_i)5081(a_s_i)0(a_s_o)">
                                                <span class="sort-att"><a href="#"
                                                        wire:model="selectedSizes.{{ $size->id }}"
                                    id="size_{{ $size->id }}"
                                    wire:click.prevent="applySizeFilter({{ $size->id }})">
                                    <span>{{$size->size}}
                                        ({{ $count = $size->productCount()}})</span>
                                    </a></span>
                                    </label>
                                    <span class="filter-qty">170</span>
                                </div>
                                @endif
                                @endforeach

                            </div> --}}
                        </div>
                    </div>
                </div>
                {{-- <div class="accordion-item">
                    <p class="accordion-header mb-0" id="aset_Heading21319">
                        <span class="testacc accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#aset_Collapse21419">
                            Price <i class='bx bxs-chevron-down'></i>
                        </span>
                    </p>
                    <div id="aset_Collapse21419" class="accordion-collapse collapse show">
                        <div class="accordion-body filter-box">
                            <div class="items">
                                <div id="slider-range" wire:ignore></div>
                                <div class="d-flex align-items-center mb-3">
                                    <span class="me-2 fw-bold">Range:</span>
                                    <span class="text-price me-1 min_value">৳{{$min_value}}</span>
                                    <span class="mx-1">-</span>
                                    <span class="text-price max_value">৳{{$max_value}}</span>
                                </div>


                            </div>
                        </div>
                    </div>
                </div> --}}
            </div>
        </div>
        <div class="col-lg-9">
            <div class="totall-product total-product-m">
                <p> We found <strong class="text-brand">{{$products->total()}}</strong> items for you!</p>
                @foreach($selectedBadges as $badge)
                <div class="filterbadge">
                    {{ $badge }}
                    <a wire:click.prevent="removeBadge('{{ $badge }}')" class="filterclosebtn"><i
                            class="fa-solid fa-xmark"></i></i></a>
                </div>
                @endforeach
            </div>
            <div id="Container" class="row">
                @if ($products)
                <div class="row product-grid-4">
                    @foreach ($products as $product)
                    <div class="col-sm-6 col-lg-4 col-6 mix {{$product->category->categories_id}}">
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
                                    @if($product->product_images->isNotEmpty() &&
                                    $product->product_images->first())
                                    <img src="{{ asset('storage/product_images/' . $product->product_images->first()->product_image) }}"
                                        class="img-sm img-thumbnail" alt="{{ $product->slug }}">
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
                                    @elseif ($product->product_price && $product->product_price->offer_price
                                    > 0)
                                    <span class=" d-flex ">
                                        <span class="text-primary"><b>৳{{$product->product_price->offer_price}}</b>
                                        </span>
                                        <span class="text-dark ms-3">
                                            <del>৳{{$product->regular_price}}</del> </span>
                                    </span>
                                    <!--{{$flag}}-->

                                    @else
                                    <span class="text-primary">৳{{$product->regular_price}} </span>
                                    @endif
                                </div>
                            </div>
                            @if($product->product_stocks)
                            @php
                            $balance = $product->product_stocks->sum('inStock') -
                            $product->product_stocks->sum('outStock')
                            @endphp
                            @endif

                            <div class="bottom">
                                @if($product->balance > 0)
                                {{-- <a class="cart-text" href="#" wire:click.prevent="store({{$product->id}})"
                                onclick="cartNotify()">Add
                                To Cart</a>
                                <i class="bx bx-plus"></i> --}}
                                <a class="cart-text" href="{{route('product.detail',['slug'=>$product->slug])}}">View
                                    Details</a>
                                <i class='bx bx-search-alt'></i>
                                @else
                                <p class="text-danger me-4">Out of stock</p>
                                @endif
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                @else
                <div class="row product-grid-3">
                    <div class="col-12">
                        <h3>No Product found.</h3>
                    </div>
                </div>
                @endif
                {{$products->links()}}

            </div>
        </div>
    </div>
</div>
</div>
<!-- End Products -->





<style>
    .filterbadge {
        color: #e53a24;
        /* width: 100%; */
        /* height: 30px; */
        border: 1px solid #e53a24;
        font-size: 12px;
        border-radius: 28px;
        padding: 2px 14px;
        display: inline-block;
        font-weight: 400;
        margin-top: 10px;
        margin-left: 6px;
    }

    .filterbadge .filterclosebtn {
        margin-left: 10px;
        color: #e53a24;
        font-weight: 500;
    }

</style>

</section>
<script>
    function cartNotify() {
        $.Notification.autoHideNotify('success', 'top right', 'Success', 'Product added to cart successfully');
    }

    function wishNotify() {
        $.Notification.autoHideNotify('success', 'bottom right', 'Success',
            'Product added to wishlist successfully');
    }

    document.addEventListener('DOMContentLoaded', function() {
        var showMoreBtnBrandList = document.getElementById('showMoreBtnBrandList');
        var brandList = document.getElementById('brandList');
        var hiddenBrands = brandList.querySelectorAll('.d-none');
        showMoreBtnBrandList.addEventListener('click', function() {
            hiddenBrands.forEach(function(brand) {
                brand.classList.remove('d-none');
            });
            showMoreBtnBrandList.style.display = 'none';
        });


        var showMoreBtnGroupList = document.getElementById('showMoreBtnGroupList');
        var groupList = document.getElementById('groupList');
        var hiddenLists = groupList.querySelectorAll('.d-none');
        showMoreBtnGroupList.addEventListener('click', function() {
            hiddenLists.forEach(function(brand) {
                brand.classList.remove('d-none');
            });
            showMoreBtnGroupList.style.display = 'none';
        });


        var showMoreBtnStoragList = document.getElementById('showMoreBtnStoragList');
        var storageList = document.getElementById('storageList');
        var hiddenStorages = storageList.querySelectorAll('.d-none');
        showMoreBtnStoragList.addEventListener('click', function() {
            hiddenStorages.forEach(function(brand) {
                brand.classList.remove('d-none');
            });
            showMoreBtnStoragList.style.display = 'none';
        });
    });





    document.addEventListener("DOMContentLoaded", function () {
        function toggleAccordionClass() {
            const accordionDiv1 = document.getElementById("aset_Collapse21439");
            const accordionDiv2 = document.getElementById("aset_Collapse2139");
            const accordionDiv3 = document.getElementById("aset_Collapse2149");
            const accordionDiv4 = document.getElementById("aset_Collapse21459");
            const accordionDiv5 = document.getElementById("aset_Collapse21419");
            if (window.innerWidth <= 991) { // Small devices (width <= 991px)
                accordionDiv1.classList.remove("show");
                accordionDiv2.classList.remove("show");
                accordionDiv3.classList.remove("show");
                accordionDiv4.classList.remove("show");
                accordionDiv5.classList.remove("show");
            } else {
                accordionDiv1.classList.add("show");
                accordionDiv2.classList.add("show");
                accordionDiv3.classList.add("show");
                accordionDiv4.classList.add("show");
                accordionDiv5.classList.add("show");
            }
        }

        // Run on page load
        toggleAccordionClass();

        // Run on window resize
        window.addEventListener("resize", toggleAccordionClass);
    });

</script>
</div>

@push('shop')
<script>
    $(document).ready(function () {
        // // Hide all submenus initially
        // $('.has_sub ul').hide();

        // // Toggle submenu on clicking the plus icon
        // $('.toggle-submenu').click(function(){
        //     $(this).find('i').toggleClass('fa-plus fa-minus');
        //     $(this).next('ul').slideToggle();
        // });
        // $('.category_check').click(function () {
        //     if ($(this).is(':checked')) {

        //         console.log('Checkbox is checked');
        //     } else {

        //         console.log('Checkbox is not checked');
        //     }
        // });
    });

    var sliderrange = $('#slider-range');
    var amountprice = $('#amount');
    $(function () {
        sliderrange.slider({
            range: true,
            min: 0,
            max: 1000000,
            values: [0, 5000],
            slide: function (event, ui) {
                // amountprice.val("$" + ui.values[0] + " - $" + ui.values[1]);
                @this.set('min_value', ui.values[0])
                @this.set('max_value', ui.values[1])
            }
        });
        // amountprice.val("$" + sliderrange.slider("values", 0) +
        //         " - $" + sliderrange.slider("values", 1));
    });

</script>
@endpush
