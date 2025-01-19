{{-- Modal category add --}}

<!-- Modal -->
<div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered ">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Category</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        {{-- <div class="category_form" id="category_form"></div> --}}
        <form action="{{route('category.store')}}" method="POST" enctype="multipart/form-data" >
            @csrf
            @method('POST')
            <div class="modal-body">
                <div class="row g-3">
                    <div class="col-md-12 mb-4">
                      <label for="category_name" class="form-label">Category <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="category_name" name="category_name" required>
                    </div>
                    <div class="col-md-12 mb-4">
                      <label for="category_image" class="form-label">Category Image</label>
                      <input type="file" class="form-control" id="category_image" name="category_image" >
                    </div>
                    <div class="col-12 mb-4">
                      <div class="form-check ml-20">
                        <input class="form-check-input" type="checkbox" checked name="status" id="status">
                        <label class="form-check-label" for="status">
                          Publish
                        </label>
                      </div>

                    </div>
                    <div class="col-12 mb-4">
                        <div id="image-preview">
                            <img id="output-image" src="" alt=""  width="250px">
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


<script>
    document.getElementById('category_image').addEventListener('change', function (event) {
        const input = event.target;
        const preview = document.getElementById('image-preview');
        const outputImage = document.getElementById('output-image');

        if (input.files && input.files[0]) {
            const reader = new FileReader();

            reader.onload = function (e) {
                outputImage.src = e.target.result;
                preview.style.display = 'block';
            };

            reader.readAsDataURL(input.files[0]);
        }
    });

</script>
