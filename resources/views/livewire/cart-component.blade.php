<div>
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <div class="title-content">
                        <h2>Your Cart</h2>
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                <span>View Cart</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Checkout -->
    <div class="checkout-area">
        <div class="container">
            <form>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header bg-white">
                                <h3 class="order-list-title">Order List</h3>
                            </div>
                            <div class="card-body">
                                <div class="modal-body">
                                    @if(Cart::instance('cart')->count() > 0)
                                    <div class="cart-table">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="text-center align-middle">
                                                    <tr>
                                                        <th scope="col">Image</th>
                                                        <th scope="col">Name</th>
                                                        <th scope="col">Variant</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col">Sub Total</th>
                                                        <th scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="text-center align-middle">
                                                    @foreach (Cart::instance('cart')->content() as $item)
                                                    <tr>
                                                        <th width="15%">
                                                            <img style="width: 100px;" src="{{asset('storage/product_images/'.$item->options->image->product_image)}}" alt="Cart">
                                                        </th>
                                                        <td width="30%">
                                                            <h6>{{ $item->name }}</h6>

                                                            {{-- @if ($item->options->selected_eyewear == "ChoosePowerLens")
                                                                <div class="d-flex flex-column">
                                                                    <span class="mb-1">
                                                                        <span class="badge bg-secondary mb-1">{{ $item->options->selected_eyewear }}</span>
                                                                        <span class="badge bg-secondary mb-1">{{ $item->options->lens_type }} : ৳{{ $item->options->lens_price }}</span>
                                                                    </span><br>
                                                                    @if($item->options->prescription_image)
                                                                        <div class="prescription-image">
                                                                            <img src="{{ asset('storage/'.$item->options->prescription_image) }}" alt="Prescription" style="width: 250px; height: auto;">
                                                                        </div>
                                                                    @endif
                                                                </div>
                                                            @elseif ($item->options->selected_eyewear == "BuyOnlyFrame")
                                                                <div class="d-flex flex-column">
                                                                    <span class="mb-1">
                                                                        <span class="badge bg-secondary">{{ $item->options->selected_eyewear }}</span>
                                                                    </span>
                                                                </div>
                                                            @endif --}}
                                                        </td>

                                                        <td width="30%">
                                                            @php
                                                                $color = DB::table('colors')
                                                                        ->where('color_name', $item->options->color)
                                                                        ->first();

                                                                $color_code = $color ? $color->color_code : null; // Check if a color was found
                                                            @endphp
                                                            <span class="rounded" style="display: inline-block; width: 15px; height: 15px; background-color: {{ $color_code }}; margin-top: 5px;"></span>
                                                            <span>{{ $item->options->size }}</span>
                                                        </td>
                                                        <td width="15%">
                                                            <span class="rate">৳{{$item->price}} x {{$item->qty}}</span>
                                                        </td>
                                                        <td width="5%">
                                                            <ul class="number m-0 p-0">
                                                                <li>
                                                                    <span class="minus" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"><b>-</b></span>
                                                                    <input type="text" value="{{$item->qty}}">
                                                                    {{-- <span class="qty-val">{{$item->qty}}</span> --}}
                                                                    <span class="plus" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"><b>+</b></span>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td width="15%">
                                                            <span class="rate">৳{{$item->options->final_amount}}</span>
                                                        </td>
                                                        <td width="5%">
                                                            <div wire:click.prevent="removecart('{{$item->rowId}}')">
                                                                <i class="bx bx-x fs-3 text-danger"></i>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5"></div>
                                        <div class="col-md-7">
                                            <div class="card-footer total-p-bg">
                                                <div class="checkout-price">
                                                    <ul>
                                                        <li>
                                                            <h5>Total</h5>
                                                        </li>
                                                        <li>
                                                            <p>৳{{Cart::instance('cart')->subtotal()}}</p>

                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="buttons" style="float:right;">
                                        <ul class="buttons-list pb-2">
                                            <li>
                                                <a class="common-btn buy-now-btn" href="{{route('checkout')}}">
                                                <i class='bx bxs-shopping-bag'></i> Checkout
                                                </a>
                                            </li>
                                            <li>
                                                <a class="common-btn ad-cart-btn" href="{{ route('shop') }}">
                                                Continue Shopping <i class='bx bxs-cart-add'></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    @else
                                    <div class="mb-4">
                                        <h5 class="mb-2 text-center">No items found in cart.</h5>
                                        <h6 class="mb-2 text-center">Go to shop.</h6>
                                        <div class="divider center_icon mt-10 mb-20"><i class="fi-rs-fingerprint"></i></div>
                                        <div class="text-center">
                                            <a class="common-btn ad-cart-btn" href="{{ route('shop') }}">
                                                Continue Shopping <i class='bx bxs-cart-add'></i>
                                                </a>
                                        </div>
                                    </div>
                                    @endif

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Checkout -->
</div>


    <script>
        dataLayer.push({ ecommerce: null });  // Clear the previous ecommerce object.
        dataLayer.push({
          event: "add_to_cart",
          ecommerce: {
            currency: "BDT",
            items: [@foreach (Cart::instance('cart')->content() as $product)
            {
              item_id: "{{ $product->id }}",
              item_name: "{{ $product->name }}",
              index: 0,
              item_brand: "{{ $product->brand_name ?? "" }}",
              item_category: "{{ $product->category_name ?? "" }}",
              item_category2: "{{ $product->category_name2 ?? "" }}",
              item_category3: "{{ $product->category_name3 ?? "" }}",
              item_category4: "{{ $product->category_name4 ?? "" }}",
              price: {{ $product->price }},
              quantity: {{ $product->qty ?? 0 }}
            },@endforeach
            ]
          }
        });
</script>
