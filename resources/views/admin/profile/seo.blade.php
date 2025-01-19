@extends('layouts.admin')
@section('title','Profile Setting')

@section('content')
<section class="content-body p-xl-4">
    @php
        $seo = DB::table('seo_settings')->first();
    @endphp
    <div class="card">
        <div class="card-body">
            <form action="{{route('seo.update')}}" method="post" enctype="multipart/form-data">
                @csrf
                @method('POST')
                <input type="hidden" name="seo_id" id="seo_id" value="{{$seo->id}}">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="row gx-3">
                            <div class="col-6 col-lg-6 col-md-4  mb-3">
                                <label class="form-label">Title<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" value="{{$seo->seoTitle}}" name="seoTitle" placeholder="Type here">
                            </div> <!-- col .// -->
                            <div class="col-4 col-lg-4 col-md-4  mb-3 text-lg-center">
                                <div id="app" class="photo-upload">
                                    <div class="file-upload-form">
                                        <input type="file" name="seoLogo"  id="seologo" accept="image/*" class="input-file">
                                        <label for="seologo">SEO Logo</label>
                                    </div>
                                    <div class="image-preview" id="seo-preview" >
                                        <img id="seo-img" src="{{asset('storage/Seologos/'.$seo->seoLogo)}}" class="image-preview__img">
                                    </div>
                                </div>
                                <label for="" class="form-label">SEO Logo</label>
                            </div> <!-- col .// -->
                            <div class="col-6 col-lg-6 col-md-6  mb-3">
                                <label class="form-label">SEO Description </label>
                                <textarea class="form-control" name="seoDescription" placeholder="SEO Description" cols="30" rows="15">{{$seo->seoDescription}}</textarea>
                            </div> <!-- col .// -->
                        </div> <!-- row.// -->
                    </div> <!-- col.// -->

                </div> <!-- row.// -->
                <br>
                <button class="btn btn-primary" type="submit">Save </button>
            </form>
        </div>
    </div>

    <hr class="my-5">

</section> <!-- content-body .// -->
@endsection
@push('brand')
<script>
    $(document).ready(function() {

        $('#seologo').on('change', function(event) {
            var input = event.target;
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#seo-preview').show();
                    $('#seo-img').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        });
    });
</script>
@endpush
