<!-- Modal -->
<div class="modal fade" id="add_specification_feature_modal-{{ $specification->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <form action="{{ route('product.specification.feature.store', $specification->id) }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Specification Feature</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="my-4">
                        <div class="form-group">
                            <h6>{{ $specification->name }}</h6>
                        </div>
                        <div class="form-group">
                            <div class="row mt-2">
                                <div class="col-lg-4">
                                    <input class="form-control" type="text" id="featurename-1" name="feature_name[{{ $specification->id }}][1]" placeholder="Name" required>
                                </div>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" id="featurevalue-1" name="feature_value[{{ $specification->id }}][1]" placeholder="Value" required>
                                </div>
                            </div>
                        </div>
                        <div id="morefield-{{ $specification->id }}">
                            <!-- Dynamic fields will be appended here -->
                        </div>
                        <div id="totfield-{{ $specification->id }}" class="form-group">
                            <input type="hidden" name="totinput[{{ $specification->id }}]" value="1">
                        </div>

                        <div class="action-btn d-flex justify-content-end">
                            <a class="add-btn mt-4" href="" onclick="event.preventDefault(); addFeatureField({{ $specification->id }})">
                                <i class="fa-solid fa-plus"></i>
                            </a>
                            <a class="remove-btn mt-4" href="" onclick="event.preventDefault(); removeFeatureField({{ $specification->id }})">
                                <i class="fa-solid fa-times"></i>
                            </a>
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

@push('specification')
<script>
    var specificationCounters = {};

    function addFeatureField(specificationId) {
        if (!specificationCounters[specificationId]) {
            specificationCounters[specificationId] = 1; // Initialize counter for the specification modal
        }

        if (specificationCounters[specificationId] < 20) {
            specificationCounters[specificationId]++;
            var i = specificationCounters[specificationId];
            var data = '<div class="row mt-2">' +
                        '<div class="col-lg-4">' +
                            '<input class="form-control" type="text" id="featurename-' + specificationId + '-' + i + '" name="feature_name[' + specificationId + '][' + i + ']" placeholder="Name" required>' +
                        '</div>' +
                        '<div class="col-lg-8">' +
                            '<input class="form-control" type="text" id="featurevalue-' + specificationId + '-' + i + '" name="feature_value[' + specificationId + '][' + i + ']" placeholder="Value" required>' +
                        '</div>' +
                    '</div>';
            $('#morefield-' + specificationId).append(data); // Append new fields to the specific modal
            var tot = '<input type="hidden" name="totinput[' + specificationId + ']" value="' + i + '">';
            $('#totfield-' + specificationId).html(tot); // Update the total input count for the specification
        } else {
            alert("Cannot add more than 20 rows.");
        }
    }

    function removeFeatureField(specificationId) {
        if (specificationCounters[specificationId] > 1) {
            $('#morefield-' + specificationId + ' .row:last').remove(); // Remove the last added field
            specificationCounters[specificationId]--;

            var tot = '<input type="hidden" name="totinput[' + specificationId + ']" value="' + specificationCounters[specificationId] + '">';
            $('#totfield-' + specificationId).html(tot); // Update the total count for the modal
        } else {
            alert("Cannot remove the last row. At least one row is required.");
        }
    }
</script>
@endpush
