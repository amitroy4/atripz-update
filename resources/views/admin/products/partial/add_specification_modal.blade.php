<!-- Modal -->
<div class="modal fade" id="add_specification" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <form action="{{ route('product.specification.store') }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Specification Info</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="row">
                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                            <div class="col-lg-12">
                                <label class="pr-1" for="name">Name: </label>
                                <input class="form-control" type="text" id="name" name="name" placeholder="Ex.: General">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
