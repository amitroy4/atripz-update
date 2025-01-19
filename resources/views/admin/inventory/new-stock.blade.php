<!-- Modal -->
<div class="modal fade" id="NewStockModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">New Stock</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            {{-- <div class="category_form" id="category_form"></div> --}}
            <form id="newStock">

                <div class="modal-body">
                    <input type="hidden" name="product_id" id="product_id">
                    <input type="hidden" name="old_stock" id="old_stock">
                    <div class="row g-3">
                        <div class="col-md-12 mb-2">
                            <label for="product_name" class="form-label">Product</label>
                            <input type="text" class="form-control" id="product_name" name="product_name"
                                placeholder="Product" readonly>
                        </div>

                        <div class="col-md-12 mb-2">
                            <label for="supplier" class="form-label">Supplier</label>
                            <select class="form-control" id="supplier" name="supplier">
                                <option value="">-- Select Supplier --</option>
                                @foreach ($suppliers as $supplier)
                                <option value="{{$supplier->id}}">{{$supplier->supplier_name}}</option>
                                @endforeach
                            </select>
                            {{-- <input type="text" class="form-control" id="supplier" name="supplier" readonly> --}}
                        </div>

                        <div class="col-md-6 mb-2">
                            <label for="supplierPrice" class="form-label">Supplier Price</label>
                            <input type="text" class="form-control" id="supplierPrice" name="supplierPrice">
                        </div>

                        <div class="col-md-6 mb-2">
                            <label for="regularPrice" class="form-label">Regular Price</label>
                            <input type="text" class="form-control" id="regularPrice" name="regularPrice">
                        </div>

                        <div class="col-md-12 mb-2">
                            <label for="purchase_date" class="form-label">Purchase Date</label>
                            <input type="date" class="form-control " id="purchase_date" name="purchase_date">
                        </div>
                        <style>
                            .input-header {
                                display: flex;
                                justify-content: space-between;
                                background-color: #f0f0f0;
                                /* Change the background color as needed */
                                padding: 8px;
                                /* Adjust padding as needed */
                                border-radius: 5px;
                                /* Add border radius for rounded corners */
                                margin-bottom: 5px;
                                /* Add margin to separate the header from input fields */
                                width: 100%;
                            }

                            .input-label {
                                flex: 1;
                                /* Distribute space evenly among labels */
                                /* text-align: center; */
                                /* Center-align text */
                                font-weight: bold;
                                /* Add bold font weight */
                            }

                        </style>
                        <div class="col-md-12 mb-2">
                            <!--<label for="size" style="width: 350px;" class="form-label">Size -------- In -------- Out -------- Balance -------- New<span class="text-danger">*</span></label>-->
                            <div class="input-header">
                                <span class="input-label">Color</span>
                                {{-- <span class="input-label">Size</span> --}}
                                <span class="input-label">In stock</span>
                                <span class="input-label">Out stock</span>
                                <span class="input-label">Balance</span>
                                <span class="input-label">Price</span>
                                <span class="input-label">New stock</span>
                            </div>
                            <div id="input_container" style="width: 100%;">

                            </div>
                            <div class="form-group" id="variantContainer">
                                <label>Add Variants <span>*</span>:
                                <div class="d-flex mb-2">
                                        <button type="button" class="btn-custom btn-info" id="addVariant">+</button>
                                    </div>
                                </label>
                                <div class="d-flex justify-content-around">
                                    <label for="">Color</label>
                                    {{-- <label for="">Size</label> --}}
                                    <label for="">Price</label>
                                    <label for="">Stock</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Save</button>
                        {{-- <button class="btn btn-primary" type="submit">Submit form</button> --}}
                    </div>
                </div>
        </div>
        </form>
        {{-- <div class="modal-footer">
        </div> --}}
    </div>
</div>
</div>
