<!-- Modal -->
<div class="modal fade" id="edit_specification_feature_modal-{{ $specification->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Specification Category & Features</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Category Update Form -->
                <form action="{{ route('product.specification.update', $specification->id) }}" method="POST">
                    @csrf
                    @method("PUT")
                    <div class="form-group">
                        <h6>Category</h6>
                    </div>
                    <div class="form-group mt-2">
                        <input class="form-control" type="text" name="name" value="{{ $specification->name }}" required>
                    </div>
                    <div class="text-end">
                        <button type="submit" class="btn btn-primary mt-3">Update</button>
                    </div>
                </form>

                <!-- Features Update Form (second form) -->
                <form action="{{ route('product.specification.feature.update', $specification->id) }}" method="POST">
                    @csrf
                    @method("PUT")
                    <div class="my-4">
                        <div class="form-group">
                            <h6>Features</h6>
                        </div>
                        <div class="form-group" id="feature-container">
                            @foreach ($specification->features as $index => $feature)
                                <div class="row mt-2 feature-row" id="feature-row-{{ $index + 1 }}">
                                    <div class="col-lg-4">
                                        <input class="form-control" type="text" name="feature_name[{{ $feature->id }}]" value="{{ $feature->feature_name }}" required>
                                    </div>
                                    <div class="col-lg-8">
                                        <input class="form-control" type="text" name="feature_value[{{ $feature->id }}]" value="{{ $feature->feature_value }}" required>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="text-end">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

