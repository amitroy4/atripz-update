@extends('layouts.admin')
@section('title','ColorWiseImage')
@section('content')
<style>

    p {
    margin: 0;
    }

    .upload__box {
    padding: 10px;
    }
    .upload__btn {
    display: inline-block;
    font-weight: 600;
    color: #4045ba;
    text-align: center;
    width: 100%;
    padding: 5px;
    transition: all 0.3s ease;
    cursor: pointer;
    border: 2px dashed;
    background-color: transparent;
    border-color: #4045ba;
    border-radius: 6px;
    line-height: 26px;
    font-size: 14px;
    }

    .upload__btn:hover {
    background-color: unset;
    color: #4045ba;
    transition: all 0.3s ease;
    }

    .upload__btn-box {
    margin-bottom: 10px;
    }

    .upload__img-wrap {
        display: flex;
        flex-wrap: wrap;
        margin: 0 -10px;
    }
    .upload__img-box {
    width: 160px;
    padding: 0 10px;
    margin-bottom: 12px;
    }
    .upload__img-close {
    width: 24px;
    height: 24px;
    border-radius: 50%;
    background-color: rgba(0, 0, 0, 0.5);
    position: absolute;
    top: 10px;
    right: 10px;
    text-align: center;
    line-height: 24px;
    z-index: 1;
    cursor: pointer;
    }
    .upload__img-close:after {
    content: "✖";
    font-size: 14px;
    color: white;
    }

    .img-bg {
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    position: relative;
    padding-bottom: 100%;
    }
    .upload__img-close {
        position: absolute;
        top: 5px;
        right: 5px;
        cursor: pointer;
        color: red;
        font-weight: bold;
    }

    .preview-container {
        position: relative;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    .preview-container .placeholder-text {
        color: #999;
        font-size: 14px;
        text-align: center;
    }

    .preview-wrapper {
        position: relative;
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .preview-img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

  </style>
<div class="content-header">
    <div>
        <h2 class="content-title card-title">Products Color Wise Image</h2>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{'/dashborad'}}">Dashborad</a></li>
              <li class="breadcrumb-item" aria-current="page">Product</li>
              <li class="breadcrumb-item active" aria-current="page">ColorWiseImage</li>
            </ol>
        </nav>
    </div>
</div>
<div class="row">
    <div class="col-md-6">

        <div class="card mb-4">
            <div class="card-header">
                <h3 class="card-title">{{ $product->product_name }}</h3>
            </div>
            <div class="card-body">
                <form method="post" action="{{ route('product.colorWiseImage.store',$product->id) }}" enctype="multipart/form-data">
                    @csrf
                    @method("POST")
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <label for="productColor" class="form-label">Product Colors</label>
                        </div>
                        <div class="col-md-6 mb-4">
                            <label for="image" class="form-label">Image</label>
                        </div>
                    </div>
                    @foreach($product->colors as $color)
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <input type="text" readonly class="form-control" id="productColor" value="{{ $color->color_name }}">
                            <input type="hidden" class="form-control" name="color_id_{{ $color->id }}" value="{{ $color->id }}">
                        </div>

                        <div class="col-md-6 mb-4 d-flex justify-content-center">
                            <label class="form-label upload__btn">
                                <input type="file"
                                    class="upload__inputfile"
                                    id="productColorImage"
                                    name="image_{{ $color->id }}"
                                    style="display: none;">

                                <div class="preview-container">
                                    <!-- Check if the color has an image and display it -->
                                    @php
                                        $image = $product->colorImages->firstWhere('color_id', $color->id);
                                    @endphp

                                    @if($image && Storage::disk('public')->exists($image->image))
                                        <div class="preview-wrapper">
                                            <img src="{{ asset('storage/' . $image->image) }}" alt="{{ $image->image }}" class="preview-img" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 4px;">
                                        </div>
                                    @else
                                        <span class="placeholder-text">
                                            Product Image <br>(<span class="text-warning" style="font-size: 12px;">Max: 1024 KB, Type: png, webp, jpg</span>)
                                        </span>
                                    @endif
                                </div>
                            </label>

                        </div>
                    </div>
                    @endforeach
                    <div class="row">
                        <div class="col-md-2 pt-4 mt-1">
                            <button type="submit" class="btn btn-sm btn-primary"> Save </button>
                        </div>
                    </div>
                </form>
            </div>
        </div> <!-- card end// -->
    </div>
</div>


<script>
    function previewImage(event) {
        const input = event.target;
        const preview = document.getElementById('image-preview');

        if (input.files && input.files[0]) {
            const reader = new FileReader();

            reader.onload = function (e) {
                preview.src = e.target.result;
                preview.style.display = 'block';
            };

            reader.readAsDataURL(input.files[0]);
        } else {
            preview.src = '#';
            preview.style.display = 'none';
        }
    }
</script>

@endsection
@push('product')
    <script>
        document.querySelectorAll('.upload__inputfile').forEach(input => {
            input.addEventListener('change', function (e) {
                const fileInput = e.target;
                const previewContainer = fileInput.parentElement.querySelector('.preview-container');
                const placeholder = previewContainer.querySelector('.placeholder-text');
                const file = fileInput.files[0];

                // Remove any existing preview but keep the placeholder initially
                const existingPreview = previewContainer.querySelector('.preview-wrapper');
                if (existingPreview) {
                    existingPreview.remove();
                }

                if (file) {
                    if (file.type.match('image.*')) {
                        const reader = new FileReader();
                        reader.onload = function (event) {
                            const imgPreview = `
                                <div class="preview-wrapper">
                                    <img src="${event.target.result}" alt="Uploaded Image" class="preview-img" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 4px;">
                                </div>`;
                            previewContainer.insertAdjacentHTML('beforeend', imgPreview);

                            // Hide the placeholder after adding the preview
                            if (placeholder) {
                                placeholder.style.display = 'none';
                            }
                        };
                        reader.readAsDataURL(file);
                    }
                } else {
                    // Show the placeholder if no file is selected
                    if (placeholder) {
                        placeholder.style.display = 'block';
                    }
                }
            });
        });

    </script>
@endpush
