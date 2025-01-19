<div>

    @if(Cart::instance('cart')->count() == 0)
    <button type="button" class="btn wishlist cart-popup-btn" data-bs-toggle="modal" data-bs-target=""
        data-bs-whatever="@mdo">
        <i class="bx bxs-cart"></i>
        @if(Cart::instance('cart')->count() > 0)
        <span>{{Cart::count()}}</span>
        @endif
    </button>
    @else
    <button type="button" class="btn wishlist cart-popup-btn" data-bs-toggle="modal" data-bs-target="#cartModal"
        data-bs-whatever="@mdo">
        <i class="bx bxs-cart"></i>
        @if(Cart::instance('cart')->count() > 0)
        <span>{{Cart::count()}}</span>
        @endif
    </button>
    @endif



    <!-- Start Cart -->
    <div class="modal fade" id="cartModal" tabindex="1" aria-labelledby="cartModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-scrollable position-fixed top-0 end-0"
            style="height: 100vh; margin:0; ">
            <div class="modal-content" style="height: 100%; border-radius: 0 0 0 10px; background-color: #F5F5F5;">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 d-flex justify-content-center" id="cartModalLabel"><i
                            class="bx bxs-cart fs-3"></i>Your Cart</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                @if(Cart::instance('cart')->count() > 0)
                <div class="modal-body" style="max-height: calc(100% - 130px); overflow-y: auto;">
                    <div class="cart-table">
                        <table class="table">
                            <tbody class="text-center align-middle">
                                @foreach (Cart::instance('cart')->content() as $item)
                                <tr>
                                    <th scope="row">
                                        <a href="{{route('cart')}}"><img style="width: 100px;"
                                                alt="{{$item->options->slug}}"
                                                src="{{asset('storage/product_images/'.$item->options->image->product_image)}}"></a>
                                        {{-- <img style="width: 100px;"
                                            src="{{asset('')}}frontend/assets/images/cart/cart1.png" alt="Cart"> --}}
                                    </th>
                                    <td>
                                        @php
                                            $color = DB::table('colors')
                                                    ->where('color_name', $item->options->color)
                                                    ->first();

                                            $color_code = $color ? $color->color_code : null; // Check if a color was found
                                        @endphp

                                        <h6><a href="{{route('cart')}}">{{substr($item->name,0,20)}}</a></h6>
                                        {{-- @if ($item->options->selected_eyewear == "ChoosePowerLens")
                                            <div class="d-flex flex-column">
                                                <span class="mb-1">
                                                    <span class="badge bg-secondary mb-1">{{ $item->options->selected_eyewear }}</span><br>
                                                    <span class="badge bg-secondary mb-1">{{ $item->options->lens_type }} : ৳{{ $item->options->lens_price }}</span>
                                                </span>
                                            </div>
                                        @elseif ($item->options->selected_eyewear == "BuyOnlyFrame")
                                            <div class="d-flex flex-column">
                                                <span class="mb-1">
                                                    <span class="badge bg-secondary">{{ $item->options->selected_eyewear }}</span>
                                                </span>
                                            </div>
                                        @endif --}}
                                        <span class="rate"><span>{{$item->qty}} × </span>৳{{$item->price}}</span><br>
                                        <span class="rounded" style="display: inline-block; width: 15px; height: 15px; background-color: {{ $color_code }}; margin-top: 5px;"></span>
                                        <span>{{ $item->options->size }}</span>
                                    </td>
                                    <td>
                                        <ul class="number m-0 p-0">
                                            <li class="m-auto">
                                                <span class="minus" wire:click.prevent="decreaseQuantity('{{ $item->rowId }}')">-</span>
                                                <input type="text" value="{{ $item->qty }}">
                                                <span class="plus" wire:click.prevent="increaseQuantity('{{ $item->rowId }}')">+</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div>
                                            <button wire:click.prevent="removecart('{{$item->rowId}}')" type="button"
                                                style="color: red; font-size: 1.5rem; line-height: 1; background: none; border: none; cursor: pointer;"
                                                data-bs-dismiss="modal" aria-label="Close">
                                                <i class="bx bx-x fs-3 text-danger"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class=" m-4">
                    <div class=" d-flex justify-content-between mb-3 fs-5">
                        <div><b>Subtotal</b></div>
                        <div class="text-danger">৳{{Cart::instance('cart')->subtotal()}}</div>
                    </div>
                    <div class=" d-flex justify-content-between">
                        <a href="{{route('cart')}}" type="button"
                            class="btn btn-secondary d-flex align-items-center justify-content-center"
                            style="width: 120px; height: 50px;"><b>View cart</b></a>
                        <a href="{{route('checkout')}}" type="button"
                            class="btn btn-primary d-flex align-items-center justify-content-center"
                            style="width: 120px; text-align: center;"><b><i class="bx bx-cart-download"></i>
                                Checkout</b></a>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
    <!-- End Cart -->

</div>
