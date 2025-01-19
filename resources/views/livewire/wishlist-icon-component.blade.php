{{-- <div class="header-action-icon-2">
    <a href="{{route('wishlist')}}">
<i class="fal fa-heart"></i>
@if(Cart::instance('wishlist')->count() > 0)
<span class="pro-count blue">{{Cart::instance('wishlist')->count()}}</span>
@endif
</a>
</div> --}}

<div>
    <button type="button" class="btn wishlist cart-popup-btn" data-bs-toggle="modal" data-bs-target="#wishlistModal"
        data-bs-whatever="@mdo">
        <i class="bx bx-heart"></i>
        @if(Cart::instance('wishlist')->count() > 0)
        <span >{{Cart::instance('wishlist')->count()}}</span>
        @endif
    </button>

   <!-- Start Wishlist  -->
   <div class="modal fade" id="wishlistModal" tabindex="1" aria-labelledby="wishlistModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-scrollable position-fixed top-0 end-0"
       style="height: 100vh; margin:0; ">
       <div class="modal-content" style="height: 100%; border-radius: 0 0 0 10px; background-color: #F5F5F5;">
          <div class="modal-header">
             <h1 class="modal-title fs-5 d-flex justify-content-center" id="wishlistModalLabel"><i
                   class="bx bx-heart fs-3"></i> Your Wishlist</h1>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="max-height: calc(100% - 130px); overflow-y: auto;">
             <div class="cart-table">
                <table class="table">
                   <tbody class="text-center align-middle">
                      <tr>
                         <th scope="row">
                            <img style="width: 100px;" src="{{asset('')}}frontend/assets/images/cart/cart2.png" alt="Cart">
                         </th>
                         <td>
                            <h6>White Comfy Stool</h6>
                            <span class="rate">৳200.00</span>
                         </td>
                         <td>
                         <a class="common-btn" href="#">
                               Add To Cart
                               <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                               <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                            </a>
                         </td>
                         <td>
                            <div>
                               <i class="bx bx-x fs-3 text-danger"></i>
                            </div>
                         </td>
                      </tr>
                      <tr>
                         <th scope="row">
                            <img style="width: 100px;" src="{{asset('')}}frontend/assets/images/cart/cart1.png" alt="Cart">
                         </th>
                         <td>
                            <h6>White Comfy Stool</h6>
                            <span class="rate">৳200.00</span>
                         </td>
                         <td>
                         <a class="common-btn" href="#">
                               Add To Cart
                               <img src="{{asset('')}}frontend/assets/images/shape1.png" alt="Shape">
                               <img src="{{asset('')}}frontend/assets/images/shape2.png" alt="Shape">
                            </a>
                         </td>
                         <td>
                            <div>
                               <i class="bx bx-x fs-3 text-danger"></i>
                            </div>
                         </td>
                      </tr>
                   </tbody>
                </table>
             </div>
          </div>
          <div class=" m-4">
             <!-- <div class=" d-flex justify-content-between mb-3 fs-4">
                <div><b>Subtotal</b></div>
                <div class="text-danger">৳7,100.00</div>
             </div> -->
             <div class=" d-flex justify-content-between">
                <a href="viewcart.php" type="button"
                   class="btn btn-secondary d-flex align-items-center justify-content-center"
                   style="width: 170px; height: 50px;"><b>View cart</b></a>
                <!-- <a href="checkout.php" type="button"
                   class="btn btn-primary d-flex align-items-center justify-content-center"
                   style="width: 170px; text-align: center;"><b><i class="bx bx-cart-download"></i> Checkout</b></a> -->
             </div>
          </div>
       </div>
    </div>
 </div>
 <!-- End Wishlist  -->
</div>
