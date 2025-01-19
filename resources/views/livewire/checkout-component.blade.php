<div>
    @php
        $total = 0;
        $discount = 0;
    @endphp
     @php

        $subtotal = floatval(preg_replace('/[^0-9.]/', '', Cart::instance('cart')->subtotal()));
        $discount = floatval($discount);
        $deliveryCharge = floatval($deliveryCharge);
        $total = $subtotal - $discount + $deliveryCharge;
        $formattedSubtotal = number_format($subtotal, 2, '.', '');
        $formattedTotal = number_format($total, 2, '.', '');
    @endphp
    @if(Cart::instance('cart')->count() > 0)

    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th class="col-8">Product Details</th>
                    <th class="col-4">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach (Cart::instance('cart')->content() as $item)
                    <tr class="bdr-btm">
                        <!-- Product Details Column -->
                        <td>
                            <div class="d-flex align-items-center">
                                <!-- Product Image -->
                                <img src="{{ asset('storage/product_images/'.$item->options->image->product_image) }}" alt="Checkout" class="img-fluid" style="max-width: 60px; margin-right: 10px;">
                                <div>
                                    <!-- Product Name -->
                                    <h6>{{ $item->name }}</h6>
                                    {{-- @if ($item->options->selected_eyewear == "ChoosePowerLens")
                                        <p class="badge bg-secondary text-light mb-1">{{ $item->options->selected_eyewear }}</p>
                                        <p class="badge bg-secondary text-light mb-1">{{ $item->options->lens_type }} : ৳{{ $item->options->lens_price }}</p>
                                    @elseif ($item->options->selected_eyewear == "BuyOnlyFrame")
                                        <p class="badge bg-secondary text-light">{{ $item->options->selected_eyewear }}</p>
                                    @endif --}}
                                    <!-- Price and Quantity -->
                                    <span class="rate">৳ {{ $item->price }} x {{ $item->qty }}</span>

                                    @php
                                        $color = DB::table('colors')->where('color_name', $item->options->color)->first();
                                        $color_code = $color ? $color->color_code : null;
                                    @endphp
                                    <!-- Color Swatch -->
                                    <span class="rounded" style="display: inline-block; width: 15px; height: 15px; background-color: {{ $color_code }}; margin-top: 5px;"></span>
                                    <span style="display: inline-block;">{{ $item->options->size }}</span>
                                </div>
                            </div>

                            @php
                                $color = DB::table('colors')->where('color_name', $item->options->color)->first();
                                $colorId = $color ? $color->id : null;
                                $colorName = $color ? $color->color_name : 'No color';
                                $colorsData = DB::table('product_attributes')
                                            ->join('colors', 'product_attributes.value', '=', 'colors.id')
                                            ->where('product_attributes.product_id', $item->id)
                                            ->where('product_attributes.name', 'Color')
                                            ->select('colors.id', 'colors.color_name', 'colors.color_code')
                                            ->distinct()
                                            ->get();
                            @endphp
                            @php
                                $size = DB::table('sizes')->where('size_name', $item->options->size)->first();
                                if ($size) {
                                    $sizeId = $size->id;
                                    $sizeName = $size->size;
                                } else {
                                    $sizeId = null;
                                    $sizeName = null;
                                }

                                $sizesData = DB::table('product_attributes')
                                            ->join('sizes', 'product_attributes.value', '=', 'sizes.id')
                                            ->where('product_attributes.product_id', $item->id)
                                            ->where('product_attributes.name', 'Size')
                                            ->select('sizes.*')
                                            ->distinct()
                                            ->get();
                            @endphp

                            <!-- Hidden Inputs -->
                            <input type="hidden" name="size_id" id="size_id" value="{{ $sizeId }}">
                            <input type="hidden" name="color_id" id="color_id" value="{{ $colorId }}">
                        </td>

                        <!-- Actions Column -->
                        <td class="text-center">
                            <div class="d-flex justify-content-between">
                                <!-- Quantity Adjustment -->
                                <div class="increase">
                                    <ul class="increase-list">
                                        <li style="width: 85px;">
                                            <ul class="increase-number">
                                                <li>
                                                    <span class="minus" wire:click.prevent="decreaseQuantity('{{ $item->rowId }}')">-</span>
                                                    <input type="text" value="{{ $item->qty }}">
                                                    <span class="plus" wire:click.prevent="increaseQuantity('{{ $item->rowId }}')">+</span>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <i wire:click.prevent="removecart('{{ $item->rowId }}')" class="bx bx-x fs-3 text-danger"></i>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>


    <div class="card-footer total-p-bg">
        <div class="checkout-price">
            <input type="hidden" name="coupon_code" id="coupon_code" >
            <ul>
                <li>
                    <h5>Sub Total</h5>
                </li>
                <li>
                    <p id="totalAmount">৳ {{ $formattedSubtotal}}</p>
                    <input type="hidden" name="subtotal" value="{{$formattedSubtotal}}">
                </li>
            </ul>
            <ul>
                <li>
                    <h5>Delivery Charge</h5>
                </li>
                @if($deliveryCharge)
                <li>
                    <p>৳ {{ $deliveryCharge }}
                        <input type="hidden" name="shipping_cost" id="shipping_cost" value="{{$deliveryCharge}}">
                </li>
                @else
                <li>
                    <p>৳ {{ 0 }}
                </li>
                @endif
            </ul>
            <ul>
                <li>
                    <h5>Discount</h5>
                </li>
                @if($discount)
                <li>
                    <p>৳ {{ $discount }}</p>
                    <input type="hidden" name="discount" id="discount" value="{{$discount}}">
                </li>
                @else
                <li>
                    <p>৳ {{ 0 }}
                    <input type="hidden" name="discount" id="discount" value="0">
                </li>
                @endif
            </ul>
            <ul>
                <li>
                    <h5>Total</h5>
                </li>
                <li>
                    <p>৳ {{$formattedTotal}}</p>
                    <input type="hidden" name="total_amount" id="t_amount" value="{{$total}}">
                </li>
            </ul>

        </div>
    </div>
    @else
    <div class="text-center my-4">
        <h5 class="mb-2 text-center">No items found</h5>
        <a class="common-btn ad-cart-btn" href="{{ route('shop') }}">
            Continue Shopping <i class='bx bxs-cart-add'></i>
            </a>
    </div>
    @endif
</div>
