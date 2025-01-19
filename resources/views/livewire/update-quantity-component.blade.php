{{-- <div class="detail-qty border radius">
    <a href="#" class="qty-down" wire:click.prevent="decreaseQuantities"><i class="fi-rs-angle-small-down"></i></a>
    <span class="qty-val" wire:model="quantity">{{$quantity}}</span>
    <a href="#" class="qty-up" wire:click.prevent="increaseQuantites"><i class="fi-rs-angle-small-up"></i></a>
 </div> --}}

 <ul class="number">
    <li>
        <a wire:click.prevent="decreaseQuantities" class="minus">-</a>
        <input type="text" wire:model="quantity" value="{{$quantity}}">
        <a wire:click.prevent="increaseQuantites" class="plus">+</a>
    </li>
</ul>
