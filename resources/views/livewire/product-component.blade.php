<div >
    <div class="top align-items-center">
        <div class="row ">
            <div class="col-lg-7">
                <div class="outer">
                    <div class="row">
                        <div class="col-3 col-sm-3 col-lg-3">
                            <div class="products-nav" wire:ignore>
                                @if ($product->colorImages)
                                @foreach ($product->colorImages as $value)
                                <div class="item" >
                                    {{-- <div>{{$value->color_id}}</div> --}}
                                    <div class="top-img" data-color="{{$value->color_id}}">
                                        <img src="{{asset('storage/'.$value->image)}}"
                                            alt="Product">
                                    </div>
                                </div>
                                @endforeach
                                @endif
                                @php
                                    $imageCount = 0;
                                @endphp
                                @if ($product->product_images->isNotEmpty() && $product->colorImages->isEmpty())
                                @php
                                    $imageCount = count($product->product_images);
                                @endphp
                                @foreach ($product->product_images as $image)
                                <div class="item">
                                    <div class="top-img">
                                        <img src="{{asset('storage/product_images/'.$image->product_image)}}"
                                            alt="Product">
                                    </div>
                                </div>
                                @endforeach
                                @endif

                            </div>
                        </div>
                        <div class="col-9 col-sm-9 col-lg-9 mt-2">
                            <div class="product-preview" wire:ignore>
                                @if ($product->colorImages)
                                @foreach ($product->colorImages as $value)
                                <div class="item">
                                    {{-- <div>{{$value->color_id}}</div> --}}
                                    <div class="product-img--main" data-scale="2"
                                        data-image="{{asset('storage/'.$value->image)}}"
                                        style="width: 555.984px;" data-color="{{$value->color_id}}">
                                    </div>
                                </div>
                                @endforeach
                                @endif
                                @if ($product->product_images->isNotEmpty() && $product->colorImages->isEmpty())
                                @foreach ($product->product_images as $image)
                                <div class="item">
                                    <div class="product-img--main" data-scale="2"
                                        data-image="{{asset('storage/product_images/'.$image->product_image)}}"
                                        style="width: 555.984px;">
                                    </div>
                                </div>
                                @endforeach
                                @endif

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="top-content">
                    <h2 class="product-title-1">{{$product->product_name}}</h2>
                    <span> Brands: <a href="#">{{$product->brand->brand_name}}</a></span>
                    @php
                    // $inStock = $product->product_stocks->inStock;
                    $inStock = $product->product_stocks->sum('inStock');
                    $outStock = $product->product_stocks->sum('outStock');
                    $balance = $inStock - $outStock;
                    @endphp
                    @php
                    $camp_product = DB::select('select * from camp_products where product_id = ?', [$product->id]);
                    foreach ($camp_product as $key => $value) {

                    $camp_offer = DB::select('select * from campaigns where id = ?', [$value->campaign_id]);

                    foreach ($camp_offer as $offer) {
                    // echo $offer->camp_offer;
                    }
                    }
                    @endphp


                    <ul class="reviews">

                        <li class="">
                            @if(count($camp_product) > 0)
                            <ins><span class="offer-price" id="p_price">৳{{$value->camp_price}}</span></ins>
                            <ins><span class="real-price"><del>৳{{$product->regular_price}}</del></span></ins>
                            @else
                            @if ($product->product_price->offer_price > 0)
                            <ins><span class="offer-price" id="p_price">৳{{$product->product_price->offer_price}}</span></ins>
                            <ins><span class="real-price"><del>৳{{$product->regular_price}}</del></span></ins>
                            <!--<span-->
                            <!--    class="save-price  font-md color3 ml-15">{{$product->product_price->percentage}}%-->
                            <!--    Off</span>-->
                            @else

                            <ins><span class="offer-price" id="p_price">৳{{$product->regular_price}}</span></ins>

                            @endif
                            @endif
                        </li>
                    </ul>
                    <div class="card">
                        <div class="card-body">
                            <div class="short-desc">
                                <h4 class="quick-title">Quick Overview</h4>
                                <ul class="product-more-infor mt-10">
                                    @foreach ($product->overviews as $overview)
                                    <li><span>{{$overview->overview_name}}</span>
                                        {{$overview->overview_value}}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>

                    <style>
                        .size-option.selected {
                            background-color: #808080 !important;
                            /* Or any color you prefer */
                            color: aliceblue !important;
                        }

                    </style>


                    <div class="varient-box">

                        @if (!empty($colorStockData))
                        <div class="color-varient">
                            <h4 class="color-varient-title">Color</h4>
                            <ul class="color-varient-list color-filter">
                                @php $active = true; @endphp
                                @foreach($colorStockData as $colorName => $stock)

                                @php
                                $color = $colors->firstWhere('color_name', $colorName);
                                $isDisabled = $stock['balance'] <= 0; @endphp @if($color) @if($stock['balance']>0)
                                    <li class="{{ $active ? 'active' : '' }}" wire:ignore>
                                        <div wire:click="selectColor('{{ $color->color_name }}')" class="color-option"
                                            data-color="{{$color->id}}" style="background: {{ $color->color_code }};">
                                            <span class=""></span>
                                        </div>
                                        <p class="color-stock-preview">{{ $stock['balance'] }}
                                            Items Left
                                        </p>
                                    </li>
                                    @endif
                                    @php $active = false; @endphp
                                    @endif
                                    @endforeach
                            </ul>
                        </div>

                        {{-- <div class="variation-add-to-cart variations_button variation-add-to-cart-enabled"> --}}
                            {{-- <input type="hidden" class="tm-epo-counter" name="tm-epo-counter" value="1">
                            <input type="hidden" data-epo-id="1" class="add-to-cart" name="ddtocart" value="19378"> --}}
                            {{-- <div class="" id="extra-product-options">
                                <div class="section-inner-wrap">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h3 class="mt-3 mb-2">
                                                <span class="">Let's </span>Choose Your Own Power Glass
                                            </h3> --}}
                                            {{-- <div class="mb-2">
                                                <p>you can order this product with power lens</p>
                                            </div> --}}
                                        {{-- </div>
                                        <div class="col-lg-12 col-md-12">
                                            <div class="ml-20 mb-3">
                                                <div class="">
                                                    <label class="form-check-label active" for="Buy_only_frame" id="form-label">
                                                        <input checked type="radio" wire:model="selectedEyewear" class="form-check-input radio-check" id="Buy_only_frame" name="lens_type" value="BuyOnlyFrame">
                                                        <span class="form-check-label">
                                                             @if ( stripos($product->category->category_name, 'lenses') != false ||
                                                                (isset($product->category->parent) &&
                                                                stripos($product->category->parent->category_name, 'lenses') != false)
                                                                )
                                                            <span class="label tm-label">Buy only Lense</span>
                                                            @else
                                                            <span class="label tm-label">Buy only frame</span>
                                                            @endif
                                                        </span>
                                                    </label>
                                                </div>
                                                <div class="">
                                                    <label class="form-check-label" for="Choose_power_lens">
                                                        <input type="radio" wire:model="selectedEyewear" class="form-check-input radio-check " id="Choose_power_lens" name="lens_type" value="ChoosePowerLens">
                                                        <span class="label-wrap">
                                                            <span class="label tm-label">
                                                                Choose power lens
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div> --}}
                                    {{-- <div id="powerlens" class="choosePowerLens" style="{{ $selectedEyewear == 'ChoosePowerLens' ? 'display:block;' : 'display:none;' }}">
                                        <div class="row">
                                            <h4 class="mb-2"> Select type of lens</h4>
                                            <span class="text-danger" id="lenseSelect_warning"></span> --}}
                                            {{-- @if ( stripos($product->category->category_name, 'lenses') != false ||
                                                (isset($product->category->parent) &&
                                                stripos($product->category->parent->category_name, 'lenses') != false)
                                                )
                                                <div class="col-lg-12 col-md-12">
                                                    <ul class=" ml-20">
                                                        <li class="">
                                                            <label class="form-check-label" for="Only_Power_Lens">
                                                                <input type="radio" id="Only_Power_Lens" wire:model="lensType"
                                                                    name="mylens" class="form-check-input radio-check" data-mylens="400" value="Normal_Lens+400">
                                                                <span class="label-wrap">
                                                                    <span class="label tm-label">{{ $product->category->category_name }} lense (+400৳)</span>
                                                                </span>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                             @else
                                             <div class="col-lg-12 col-md-12">
                                                 <ul class=" ml-20">
                                                     <li class="">
                                                         <label class="form-check-label" for="Normal_Lens">
                                                             <input type="radio" class="Chooselens" id="Normal_Lens" wire:model="lensType"
                                                                 name="mylens" class="form-check-input radio-check" data-mylens="300" value="Normal_Lens+300">
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Crystal White (+300৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="Anti_Reflect_Lens">
                                                             <input type="radio" class="Chooselens" id="Anti_Reflect_Lens" wire:model="lensType"
                                                              class="form-check-input radio-check" name="mylens" data-mylens="400" value="Anti_Reflect_Lens+400" >
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Anti Reflection (+400৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="photosun_sunproof">
                                                             <input type="radio"  class="Chooselens" id="photosun_sunproof" wire:model="lensType"
                                                              class="form-check-input radio-check" name="mylens" data-mylens="400" value="photosun_sunproof+400" >
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Photosun / Sunproof (+400৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="photosun_anti_reflection">
                                                             <input type="radio" class="Chooselens" id="photosun_anti_reflection" wire:model="lensType"
                                                              class="form-check-input radio-check" name="mylens" data-mylens="600" value="photosun_anti_reflection+600" >
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Photosun + Anti Reflection (+600৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="bluecut_UV_protected">
                                                             <input type="radio" class="Chooselens" id="bluecut_UV_protected" wire:model="lensType"
                                                              class="form-check-input radio-check" name="mylens" data-mylens="600" value="bluecut_UV_protected+600" >
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Bluecut / UV Protected (+600৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                      <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="colored_lenses">
                                                             <input type="radio" class="Chooselens" id="colored_lenses" wire:model="lensType"
                                                              class="form-check-input radio-check" name="mylens" data-mylens="600" value="colored_lenses+600" >
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Colored Lenses (any color) (+600৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label" for="photosun_bluecut">
                                                             <input type="radio" class="Chooselens" class="form-check-input radio-check" wire:model="lensType"
                                                             name="mylens" id="photosun_bluecut" data-mylens="1500" value="photosun_bluecut+1500">
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">(Photosun + Bluecut) (+1500৳)</span>
                                                             </span>
                                                         </label>

                                                     </li>
                                                     <li class="tmcp-field-wrap">
                                                         <label class="form-check-label"
                                                             for="premium_Blu_Cut_lens">
                                                             <input type="radio" class="Chooselens" class="form-check-input radio-check" wire:model="lensType"
                                                             id="premium_Blu_Cut_lens" name="mylens" data-mylens="1500" value="premium_Blu_Cut_lens+1500">
                                                             <span class="label-wrap">
                                                                 <span class="label tm-label">Bluecut/UV (𝙋𝙧𝙚𝙢𝙞𝙪𝙢|𝘼𝙣𝙩𝙞 𝙁𝙤𝙜) (+1500৳)</span>
                                                             </span>
                                                         </label>
                                                     </li>
                                                 </ul>
                                             </div>
                                            @endif --}}
                                        {{-- </div> --}}
                                        {{-- <div class="row my-4">
                                            <div class="col-lg-12 col-md-12">
                                                <h3 class="element-label">Prescription Note</h3>
                                                <ul class="mt-2">
                                                    <li class="">
                                                        <label class="form-label" for="prescription_note">
                                                            <textarea name="prescription_note" rows="5" cols="30" maxlength="500" id="prescription_note" wire:model="Note" required></textarea>
                                                            <span class="chars">
                                                                <span class="chars-remanining">500</span>
                                                                <span class="remaining"> characters remaining</span>
                                                            </span>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> --}}
                                        {{-- <div class="row mb-4">
                                            <div class="col-lg-12">
                                                <p>Please upload your recent prescription image here.</p>
                                                <span class="text-danger" id="image_warning"></span>
                                            </div>
                                            <div class="col-lg-12">
                                            <div class="mt-2">
                                            <!-- Prescription Image Upload -->
                                            <label for="upload_prescription">
                                                <span class="cpf-upload-wrap">
                                                    <input type="file" class="fileup" wire:model="prescriptionImage" class="form-control" id="upload_prescription" name="myPrescription">
                                                    <div wire:loading wire:target="prescriptionImage">
                                                        <div class="spinner-border spinner-border-sm" role="status">
                                                            <span class="visually-hidden">Loading...</span>
                                                        </div>
                                                        Uploading...
                                                    </div>
                                                </span>
                                                <br>
                                                <small class="max-file-size">(Image size should be less than 1024kb and png, jpg, pdf)</small>
                                            </label>

                                            <!-- Preview image -->
                                            @if ($prescriptionImage)
                                                <div class="mt-2">
                                                    <strong>Preview:</strong>
                                                    <img src="{{ $prescriptionImage->temporaryUrl() }}" alt="Prescription Image Preview" style="max-width: 200px;">
                                                </div>
                                            @endif

                                            @error('prescriptionImage') <span class="text-danger">{{ $message }}</span> @enderror
                                        </div> --}}
{{--
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div> --}}
                                {{-- <div>
                                    <dl class="tm-extra-product-options-totals tm-custom-price-totals">
                                        <dt class="tm-options-totals">Options amount: </dt>
                                        <dd class="tm-options-totals ml-20">
                                            <span class="Price-amount amount active">
                                                <bdi wire:ignore  id="lens_price">0.00<span class="Price-currencySymbol">৳</span></bdi> --}}
                                                {{-- <input type="hidden" id="lens_price" name="lens_price" class="lens_price"> --}}
                                            {{-- </span> --}}
                                        {{-- </dd> --}}
                                        {{-- <dt class="tm-final-totals">Final total: </dt> --}}
                                        {{-- <dd class="tm-final-totals ml-20"> --}}
                                            {{-- <span class="Price-amount final amount active "> --}}
                                                {{-- <bdi wire:ignore id="final_amount">0.00<span class="Price-currencySymbol">৳</span></bdi> --}}
                                                {{-- <input type="hidden" id="product_price" name="product_price" class="product-price"> --}}
                                            {{-- </span> --}}
                                        {{-- </dd> --}}
                                    {{-- </dl>
                                </div> --}}
                            {{-- </div>
                        </div> --}}
                        @endif

                        @if ($selectedColor)
                        <div class="size-varient">
                            <h4 class="size-varient-title">Size</h4>

                            <ul class="size-varient-list size-filter" id="sizeOptions">
                                @foreach ($productDetails as $variant => $details)
                                @foreach ($details as $index => $detail)
                                @if ($index == $selectedColor)
                                @foreach ($detail as $sizename => $size)
                                @if ($size['inStock']>0)
                                <li class="">
                                    <div class="size-option @if ($sizename == $selectedSize) selected @endif"
                                        data-size="{{ $sizename }}"
                                        wire:click="selectSizeVariant('{{$sizename}}','{{ $size['variant_id'] }}')">
                                        <span>{{ $sizename }} ({{ $size['inStock'] }})</span>
                                    </div>
                                </li>
                                @endif
                                @endforeach
                                @endif
                                @endforeach
                                @endforeach
                            </ul>

                        </div>
                        @endif
                        @if ($selectedSize)
                            <div class="buttons">
                                <ul class="buttons-list">
                                    @if($product->balance > 0)
                                    <li>
                                        @livewire('update-quantity-component')
                                    </li>


                                    <li>
                                        <a wire:click.prevent="buyNow({{ $product->id }})" class="common-btn buy-now-btn"
                                            href="#" wire:ignore>
                                            <i class='bx bxs-shopping-bag'></i> Buy Now
                                        </a>
                                    </li>
                                    <li>
                                        <a wire:click.prevent="store({{ $product->id }})" class="common-btn ad-cart-btn"
                                            href="#" wire:ignore>
                                            Add To Cart <i class='bx bxs-cart-add'></i>
                                        </a>
                                    </li>

                                    @endif
                                </ul>
                            </div>
                        @endif
                    </div>
                    <div class="product-tag-info">
                        <ul class="product-meta">
                            <li class=""><strong>Availability:</strong> <span class="in-stock ">
                                    @if($product->balance > 0)
                                    {{$product->balance}} items In Stock
                                    @else
                                    <span style="color:red;"> Out of Stock </span>
                                    @endif
                                </span>
                            </li>
                            <li class="mr-tp"><strong>EMI:</strong> <span class="in-stock ">Not Available</span>
                            </li>
                        </ul>
                        <ul class="product-meta">
                            <li class=""><strong>SKU:</strong> <span class="in-stock ">{{$product->sku}}</span></li>
                            <li class="mr-tp"><strong>Tags:</strong> <span class="in-stock ">
                                    @foreach ($product->tags as $tag)
                                    <a href="#">{{$tag->tag}}</a>,
                                    @endforeach
                                </span></li>
                        </ul>
                    </div>



                    @php
                    $productUrl = url('product/'.$product->slug)
                    @endphp
                    <div class="social-links mt-3">
                        <ul>
                            <li class="fs-5 m-2"><i class="fa-solid fa-share-nodes"></i></li>
                            <li>
                                <a href="https://www.facebook.com/sharer/sharer.php?u={{ $productUrl }}"
                                    target="_blank">
                                    <i class="bx bxl-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/intent/tweet?url={{ $productUrl}}" target="_blank">
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
        </div>

    </div>
    <div class="bottom">
        <div class="row">
            <div class="col-lg-8">
                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" href="#pills-home" role="tab"
                            aria-controls="pills-home" aria-selected="false">Description</a>
                    </li>
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                        <div class="bottom-description">
                            <p>
                                {!! $product->description !!}
                            </p>
                        </div>
                    </div>

                </div>
            </div>


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
                    <h4><a
                            href="{{route('product.detail',['slug'=>$r_product->slug])}}">{{$r_product->product_name}}</a>
                    </h4>
                    <div class="d-flex">
                        @if($flag == 1)
                        <span>৳{{$camp_price}} </span>
                        <span class="main-price">৳{{$r_product->regular_price}}</span>

                        @elseif ($r_product->product_price != null && $r_product->product_price->offer_price
                        > 0 && $flag == 0)

                        <span>৳ {{$r_product->product_price->offer_price}}</span>
                        <p class="main-price"><del>৳ {{$r_product->regular_price}}</del></p>
                        @else
                        <span>৳{{$r_product->regular_price}}</span>
                        @endif
                    </div>

                    <a class="common-btn small-buy-btn" href="{{route('product.detail',['slug'=>$product->slug])}}">View
                        Now</a>
                    {{-- <a class="common-btn small-buy-btn" href="#" wire:click.prevent="store({{$r_product->id}})">Buy
                        Now</a> --}}
                </li>
            </ul>
            @endforeach
        </div>
    </div>

</div>
</div>
<style>
    .disabled {
        pointer-events: none;
        opacity: 0.5;
        cursor: not-allowed;
    }
</style>
@push('dashboard')
    <script>

        // jQuery for validation and preview
    $(document).ready(function() {

        const $buyNowButton = $('.buy-button');
        const $addToCartButton = $('.add-cart-button');
        const $radioButtons = $('.radio-check[name="lens_type"]'); // Radio buttons for Buy Only Frame and Choose Power Lens
        const $lensTypeRadios = $('.radio-check[name="mylens"]'); // Radio buttons for lens types
        const $uploadInput = $('#upload_prescription');

        // Function to check if conditions are met to enable the buttons
        function checkButtonStatus() {
            const isChoosePowerLensSelected = $radioButtons.filter(':checked').val() === 'ChoosePowerLens';
            const isLensTypeSelected = $lensTypeRadios.is(':checked');
            const isImageUploaded = $uploadInput[0].files.length > 0;

            $('#lenseSelect_warning').text('*Please Select a lense type!!!');
            $('#image_warning').text('*Please Upload your prescription!!!');

            // Enable buttons only if "ChoosePowerLens" is selected, lens type is chosen, and an image is uploaded
            if (isChoosePowerLensSelected && isLensTypeSelected && isImageUploaded) {
                $buyNowButton.prop('disabled', false);
                $addToCartButton.prop('disabled', false);
            } else if (isChoosePowerLensSelected) {
                // Disable buttons if "ChoosePowerLens" is selected but conditions are not met
                $buyNowButton.prop('disabled', true);
                $addToCartButton.prop('disabled', true);
            } else {
                // Enable buttons if "BuyOnlyFrame" is selected
                $buyNowButton.prop('disabled', false);
                $addToCartButton.prop('disabled', false);
            }
        }

        // Check status on radio button change
        $radioButtons.on('change', checkButtonStatus);
        $lensTypeRadios.on('change', checkButtonStatus);

        // Check status on image upload
        $uploadInput.on('change', checkButtonStatus);

        // Initial check on page load
        checkButtonStatus();


        $('#upload_prescription').on('change', function() {
            const file = this.files[0];
            const validExtensions = ['jpg', 'jpeg', 'png', 'pdf'];
            const maxSize = 1023 * 1024; // 1023 KB
            const fileType = file.type.split('/').pop().toLowerCase();
            const fileSize = file.size;

            // Validate file size and type
            if ($.inArray(fileType, validExtensions) === -1) {
                alert('Invalid file type! Please upload a JPG, JPEG, PNG, or PDF file.');
                $(this).val(''); // Clear input
                return false;
            }

            if (fileSize > maxSize) {
                alert('File size must be less than 1023 KB!');
                $(this).val(''); // Clear input
                return false;
            }

            // Preview the image if it's an image file
            if (fileType === 'jpg' || fileType === 'jpeg' || fileType === 'png') {
                const reader = new FileReader();
                reader.onload = function(e) {
                    $('#imagePreview').html(`<img src="${e.target.result}" alt="Image Preview" style="max-width: 300px; max-height: 300px;">`);
                }
                reader.readAsDataURL(file);
            } else {
                $('#imagePreview').html(''); // Clear preview for non-image files
            }
        });
        const $buyOnlyFrameRadio = $('#Buy_only_frame');
            const $choosePowerLensRadio = $('#Choose_power_lens');
            const $powerLensSection = $('#powerlens');

            $buyOnlyFrameRadio.prop('checked', true);
            // Initially hide powerlens section
            $powerLensSection.hide();

            // Add event listener to the radio buttons
            $buyOnlyFrameRadio.change(function() {
                if ($buyOnlyFrameRadio.is(':checked')) {
                    $('#Only_Power_Lens').prop('checked', false);
                    $powerLensSection.hide();
                    // $('#form-label1').addClass('active');
                    // $('#form-label2').removeClass('active');
                }
            });

            $choosePowerLensRadio.change(function() {
                if ($choosePowerLensRadio.is(':checked')) {
                    $powerLensSection.show();
                    // $('#form-label2').addClass('active');
                    // $('#form-label1').removeClass('active');
                }
            });

            $('.form-check-label').click(function() {
                // Remove 'active' class from all labels
                $('.form-check-label').removeClass('active');

                // Add 'active' class to the clicked label
                $(this).addClass('active');
            });

            const priceText = $('#p_price').text().trim();

            // Extract the price value and convert it to an integer
            const price = parseInt(priceText.replace('৳', ''), 10);

            // Set the extracted price as the text content of the element with id "final_amount"
            $('#final_amount').text(priceText);

            // Set the extracted price as the value of the hidden input field with class "product-price"
            $('.product-price').val(price);

            // Add event listener to radio buttons for lens type
            $('input[type=radio][name=lens_type]').change(function() {
                // Check which radio button is selected
                if ($('#Buy_only_frame').is(':checked')) {
                    // If "Buy only frame" is selected, set lens price to 0
                    var lensPrice = 0;
                    $('#lens_price').text(lensPrice.toLocaleString('en-US', { style: 'currency', currency: 'BDT' }));
                    $('.lens_price').val(lensPrice);
                    updateTotalPrice($('#p_price').text().trim(), 0);
                } else if ($('#Choose_power_lens').is(':checked')) {
                    // If "Choose power lens" is selected, show lens options
                    $('#powerlens').show();
                }
            });

            // Add event listener to radio buttons for lens options
            $('input[type=radio][name=mylens]').change(function() {

                // If "Choose power lens" is selected, calculate the final price
                var lensPrice = parseInt($(this).data('mylens'));
                // console.log(lensPrice);
                // $wire.dispatch('lensPriceUpdated', lensPrice);

                var pPrice = parseInt($('#p_price').text().trim().replace('৳', ''), 10);
                $('#lens_price').text(lensPrice.toLocaleString('en-US', { style: 'currency', currency: 'BDT' }));
                $('.lens_price').val(lensPrice);

                var totalPrice = pPrice + lensPrice;
                // $wire.dispatch('totalPriceUpdated', totalPrice);
                // console.log(totalPrice);
                updateTotalPrice(totalPrice);
            });

            // Function to update the total price
            function updateTotalPrice(totalPrice) {
                // Update the total price in the span element
                $('.final bdi').text(totalPrice.toLocaleString('en-US', { style: 'currency', currency: 'BDT' }));
                $('.product-price').val(totalPrice);
            }

            $('.color-filter li a').click(function(e) {
                e.preventDefault();

                // Get the color ID
                var colorId = $(this).data('color');

                // Toggle active state of color filter
                $(this).toggleClass('active');

                // Check if the color filter is active
                var isActive = $(this).hasClass('active');

                // If the color filter is active, show only the product images with the selected color
                // Otherwise, show all product images
                // if (isActive) {
                //     $('.product-image-slider figure').hide();
                //     $('.product-image-slider figure[data-color="' + colorId + '"]').show();
                // } else {
                //     $('.product-image-slider figure').show();
                // }
            });
    });
    // add to cart button and buy now button disable start



    $(document).ready(function () {
        $('.product-preview').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.products-nav'
	});
	$('.products-nav').slick({
		slidesToShow: 20,
		slidesToScroll: 1,
		asNavFor: '.product-preview',
		centerPadding: '20px',
		dots: false,
		centerMode: true,
		focusOnSelect: true,
		vertical: true,
		verticalSwiping: true,
	});


        var imageCount = @json($imageCount);
        const buyNowBtn = $('.buy-now-btn');
        const addToCartBtn = $('.ad-cart-btn');
        // const colorOptions = $('.color-option');
        const sizeOptions = $('.sizeclick');

        // const messageBox = $('#color-selection-message');
        // const choosePowerLens = $('#Choose_power_lens');
        // const buyOnlyFrame = $('#Buy_only_frame');
        // const Chooselens = $('.Chooselens');
        // const fileup = $('.fileup');

        disableButtons();

        function disableButtons() {
            buyNowBtn.addClass('disabled').attr('disabled', true);
            addToCartBtn.addClass('disabled').attr('disabled', true);
        }

        function enableButtons() {
            buyNowBtn.removeClass('disabled').removeAttr('disabled');
            addToCartBtn.removeClass('disabled').removeAttr('disabled');
            messageBox.hide();
        }

        function showErrorMessage() {
            messageBox.show();
        }

        // colorOptions.on('click', function () {
        //     enableButtons();
        // });
        sizeOptions.on('click', function () {
            enableButtons();
        });

        // choosePowerLens.on('click', function () {
        //     disableButtons();
        // });
        // const selectlens = 0;
        // Chooselens.on('click', function () {
        //     selectlens =1;
        // });
        // buyOnlyFrame.on('click', function () {
        //     enableButtons();
        // });

        // fileup.on('change', function () {
        //     if(selectlens == 1){
        //         enableButtons();
        //     }else{
        //         disableButtons();
        //     }
        // });

        buyNowBtn.on('click', function (e) {
            if (colorOptions.filter('.active').length === 0) {
                e.preventDefault();
                showErrorMessage();
            }
        });

        addToCartBtn.on('click', function (e) {
            if (colorOptions.filter('.active').length === 0) {
                e.preventDefault();
                showErrorMessage();
            }
        });

        // colorwise image show js
        $('.color-option').on('click', function(event) {
            var selectedColor = $(this).data('color'); // Get the selected color ID

            console.log(selectedColor);

            var mainSlider = $('.products-nav');
            var thumbnailSlider = $('.product-preview');

            // Find the index of the selected color image in the main slider
            var selectedIndex =-imageCount+mainSlider.find('.top-img[data-color="' + selectedColor + '"]').closest('.item').index();
            // console.log(selectedIndex);
            // Find the index of the selected color image in the thumbnail slider
            // var selectedThumbIndex =-imageCount+thumbnailSlider.find('.product-img--main[data-color="' + selectedColor + '"]').closest('.item').index();

            // Go to the selected color image in both sliders
            console.log(selectedIndex);

            mainSlider.slick('slickGoTo', selectedIndex);
            thumbnailSlider.slick('slickGoTo', selectedIndex);

        });

    });

    // add to cart button and buy now button disable end
    </script>
@endpush

</div>

