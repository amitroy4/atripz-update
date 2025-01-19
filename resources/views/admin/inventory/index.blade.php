

@extends('layouts.admin')
@section('title','Inventory')
@section('content')

<div>
    <div class="content-header">
        <div>
            <h2 class="content-title card-title">Inventory</h2>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{'/dashborad'}}">Dashborad</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Basic Inventory</li>
                </ol>
            </nav>
        </div>
        <div class="content-header">
            <a href="javascript:history.back()"><i class="material-icons md-arrow_back"></i> Go back </a>
        </div>

    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="card">

                <style>
                    .table tr td{
                        vertical-align: middle;
                    }
                </style>
                <div class="card-body">
                    <div>
                        <div class="table-responsive table-desi">
                            <table class="table table-striped" id="datatable">
                                <thead>
                                    <tr>
                                        <th width=5%>ID</th>
                                        <th>Product</th>
                                        <th>Supplier</th>
                                        <th>Purchase Date</th>
                                        <th>Purchase Price</th>
                                        <th>Purchase Total</th>
                                        <th>In </th>
                                        <th>Out</th>
                                        <th>Balance</th>
                                        <th>Purchase Balance</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($products as $key => $product)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>
                                                <a class="itemside" href="#">
                                                    <div class="left">
                                                        @if($product->product_images->isNotEmpty() && $product->product_images->first())
                                                            <img src="{{ asset('storage/product_images/' . $product->product_images->first()->product_image) }}" class="img-sm img-thumbnail" alt="{{ $product->slug }}">
                                                        @endif
                                                    </div>
                                                    <div class="info">
                                                        <h6 class="mb-0">{{$product->product_name}}</h6>
                                                    </div>
                                                </a>
                                            </td>

                                            @if ($product->supplier)
                                            <td>{{$product->supplier->supplier_name }} </td>
                                            @else
                                            <td>No Supplier. </td>
                                            @endif

                                            <td>{{$product->purchase_date}}</td>

                                            <td>৳{{$product->raw_price}}</td>
                                            <td>৳{{$product->purchasePrice}}</td>

                                            <td>{{$product->inStock}}</td>
                                            <td>{{$product->soldQuantity }}</td>
                                            {{-- @php
                                                $stock_balance = $product->inStock - $product->soldQuantity;
                                            @endphp --}}
                                            <td>
                                                @if ($product->balance > 0 )
                                                {{$product->balance}}
                                                @else
                                                <span class="text-danger"> Out of Stock</span>
                                                @endif
                                            </td>
                                            <td>৳{{$product->purchaseBalance}}</td>
                                            <td>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#NewStockModal" data-product-id="{{ $product->id}}" class="btn btn-brand btn-sm add-stock">Add Stock</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<style>
    .form-group {
        margin-bottom: 15px;
    }
    .form-control {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        margin-bottom: 5px;
    }
    .btn-custom {
        padding: 8px 12px;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 0.25rem;
    }
    .btn-custom-danger {
        background-color: #dc3545;
    }
    .btn-custom-secondary {
        background-color: #6c757d;
    }
    .d-flex {
        display: flex;
        align-items: center;
    }
    .mr-2 {
        margin-right: 10px;
    }
    .mt-2 {
        margin-top: 10px;
    }
</style>
{{-- new Dynamic inputs for variants --}}
<template id="variantTemplate">
    <div class="variant">
        <div class="d-flex">
            <select name="new_variant_color[]" class="form-control mr-2 color-select">
                <option value="">Select Color</option>
                @foreach($colors as $color)
                    <option value="{{$color->id}}">{{$color->color_name}}</option>
                @endforeach
            </select>
            {{-- <select name="new_variant_size[]" class="form-control mr-2 size-select">
                <option value="">Select Size</option>
                @foreach($sizes as $size)
                    <option value="{{$size->id}}">{{$size->size}}</option>
                @endforeach
            </select> --}}
            <input type="number" name="new_variant_price[]" class="form-control mr-2" placeholder="Price">
            <input type="number" name="new_variant_stock[]" class="form-control mr-2" placeholder="Stock">
            <button type="button" class="btn-custom btn-custom-danger removeVariant">
                <i class="fas fa-times"></i>
            </button>
        </div>
    </div>
</template>

@include('admin.inventory.new-stock')

@endsection
@push('product')
<script>
    $('#addVariant').click(function() {
        const variantTemplate = $('#variantTemplate').html();
        $('#variantContainer').append(variantTemplate);
    });

    // Edit Category
    $(document).on('click', '.add-stock', function (e) {
        e.preventDefault();
        var product = $(this).data('product-id');
        // console.log(categoryId);

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: '{{url('/dashboard/inventory/newstock')}}',
            method: 'GET',
            data: {
                id: product,
            },
            success: function (response) {

                // Update other fields
                $('#product_id').val(response.product.id);
                $('#old_stock').val(response.stock ? response.stock.inStock : 0);
                $('#product_name').val(response.product.product_name);
                $('#supplier').val(response.product.supplier ? response.product.supplier.supplier_name : '');
                $('#supplierPrice').val(response.product.raw_price ? response.product.raw_price : 0);
                $('#regularPrice').val(response.product.regular_price);

                // Create and append input fields for each size
                var inputContainer = $('#input_container');
                inputContainer.empty();

                var balance = 0;
                response.product.variants.forEach(function (variant, index) {
                    balance = response.product.stock[index].inStock - response.product.stock[index].outStock;
                    // console.log(response.product.stock[index].color);

                    if(response.product.stock[index].color != 'No Color'){
                        var colorOptions = '<option value="">Select Color</option>';
                        response.colors.forEach(function (color) {
                            var selectedColor = variant.attributes.find(attr => attr.attribute.name === 'Color')?.attribute.value == color.id ? 'selected' : '';
                            colorOptions += `<option value="${color.id}" ${selectedColor}>${color.color_name}</option>`;
                        });
                    }
                    else{
                        colorOptions += `<option value="" > No Color </option>`;
                    }

                    // if(response.product.stock[index].size != 'No Size'){
                    //     var sizeOptions = '<option value="">Select Size</option>';
                    //     response.sizes.forEach(function (size) {
                    //         var selectedSize = variant.attributes.find(attr => attr.attribute.name === 'Size')?.attribute.value == size.id ? 'selected' : '';
                    //         sizeOptions += `<option value="${size.id}" ${selectedSize}>${size.size}</option>`;
                    //     });
                    // }else{
                    //     sizeOptions += `<option value="" >No Size</option>`;
                    // }

                    var inputField = `
                        <div class="variant" data-variant-id="${variant.id}">
                            <div class="d-flex">
                                <select name="variant_color[]" class="form-control mr-2 color-select" disabled>
                                    ${colorOptions}
                                </select>
                                <select name="variant_size[]" class="form-control mr-2 size-select" disabled>
                                    ${sizeOptions}
                                </select>
                                <input type="number" name="" class="form-control mr-2" value="${variant.stock}" placeholder="Stock" disabled>
                                <input type="number" name="" class="form-control mr-2" value="${response.product.stock[index].outStock}" placeholder="Out" disabled>
                                <input type="number" name="" class="form-control mr-2" value="${balance}" placeholder="Balance" disabled>
                                <input type="number" name="variant_price[]" class="form-control mr-2" value="${variant.price}" placeholder="Price" required>
                                <input type="number" name="variant_stock[]" class="form-control mr-2" placeholder="New Stock" value="0" min="0">
                                <input type="hidden" name="variant_ids[]" value="${variant.id}">
                                <button type="button" class="btn-custom btn-custom-danger removeVariant"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                    `;
                    inputContainer.append(inputField);
                });
                // $('#purchase_date').val(purchaseDate);
            }
        });
    });

    // variant delete
        $(document).on('click', '.removeVariant', function() {
            var variantElement = $(this).closest('.variant');
            var variantId = variantElement.find('input[name="variant_ids[]"]').val();

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    if (variantId) {
                        variantElement.append('<input type="hidden" name="variant_delete_ids[]" value="' + variantId + '">');

                        $.ajax({
                            url: '/dashboard/products/delete/variant/',
                            type: 'DELETE',
                            data: {
                                variant_delete_ids: variantId,
                                _token: '{{ csrf_token() }}',
                            },
                            success: function(response) {
                                variantElement.remove();
                                Swal.fire(
                                    'Deleted!',
                                    'Your variant has been deleted.',
                                    'success'
                                );
                            },
                            error: function(response) {
                                Swal.fire(
                                    'Error!',
                                    'There was an issue deleting the variant.',
                                    'error'
                                );
                            }
                        });
                    } else {
                        variantElement.remove();
                        Swal.fire(
                            'Deleted!',
                            'Your variant has been deleted.',
                            'success'
                        );
                    }
                }
            });
        });


        //New stock update
    $("#newStock").submit(function (e) {
        e.preventDefault();
        const data = new FormData(this);
        console.log(data);
        $.ajax({
            url: '{{url('/dashboard/inventory/addstock')}}',
            method: 'post',
            data: data,
            cache: false,
            processData: false,
            contentType: false,
            success: function (res) {
                if (res.status == 200) {
                    // console.log(res);
                    location.reload();
                    // $.Notification.autoHideNotify('success', 'top right', 'Excellent!!', res.message);
                }
                else{
                    $.Notification.autoHideNotify('danger', 'top right', 'Failed', res.message);

                }
            }
        })
    });
</script>

@endpush


