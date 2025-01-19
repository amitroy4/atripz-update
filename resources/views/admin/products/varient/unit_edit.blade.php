<!-- Modal -->
<div class="modal fade" id="unitModalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Unit</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form method="POST" id="unitEditForm">
            <input type="hidden" id="unit_id" name="unit_id">
            <div class="modal-body">
                <form class="row g-3">
                    <div class="col-md-12 mb-2">
                        <div class="form-group floating-label">
                            <label for="unitname" class="form-label">Unit Name<span class="text-danger">*</span></label>
                        <input type="text" class="form-control " id="unit_name" name="unit_name" required>
                        </div>
                    </div>
                    <div class="col-md-12 mb-2">
                        <label for="validationDefault01" class="form-label">Unit<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="unit_value" name="unit_value" required>
                      </div>
                    <div class="col-12  mb-2">
                      <div class="form-check ml-10">
                        <input class="form-check-input" type="checkbox"  name="status" id="status_unit">
                        <label class="form-check-label" for="status">
                          Publish
                        </label>
                      </div>

                    </div>

                    <div class="col-12 d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Save</button>
                      {{-- <button class="btn btn-primary" type="submit">Submit form</button> --}}
                    </div>
                </form>
            </div>
        </form>
        {{-- <div class="modal-footer">
        </div> --}}
      </div>
    </div>
</div>


