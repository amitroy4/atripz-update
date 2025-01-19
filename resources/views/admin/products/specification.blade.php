@extends('layouts.admin')
@section('title','Product Specification')
@section('content')

<div class="content-header">
    <div>
        <h2 class="content-title card-title">Product Specification</h2>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{'/dashborad'}}">Dashborad</a></li>
                <li class="breadcrumb-item active" aria-current="page">Product</li>
            </ol>
        </nav>
    </div>

</div>
<div class="row">
    <div class="col-lg-4">
        <div class="card mb-4">
            <!--General-->
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h5>Add Specification</h5>
                    </div>
                    <div>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#add_specification" class="btn btn-primary btn-sm rounded">Create</a>
                    </div>
                </div>
            </div>
            @include('admin.products.partial.add_specification_modal')
            <div class="card-body">
                @foreach ($specifications as $specification)
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <div class="form-group">
                        <h6>{{ $specification->name }}</h6>
                    </div>
                    <div class="action-btn">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#add_specification_feature_modal-{{ $specification->id }}"> <i class="fa-solid fa-plus me-2"></i> </a>
                        @include('admin.products.partial.add_specification_feature_modal')
                        <a href="#" data-bs-toggle="modal" data-bs-target="#edit_specification_feature_modal-{{ $specification->id }}"> <i class="fa-solid fa-pen-to-square text-dark me-2"></i> </a>
                        @include('admin.products.partial.edit_specification_feature_modal')
                        <!-- Delete Link -->
                        <a href="javascript:void(0)" onclick="confirmDelete({{ $specification->id }})">
                            <i class="fa-solid fa-times text-danger"></i>
                        </a>
                        <!-- Delete Form (Hidden by default) -->
                        <form id="delete-form-{{ $specification->id }}" action="{{ route('product.specification.destroy', $specification->id) }}" method="POST" style="display: none;">
                            @csrf
                            @method('DELETE')
                        </form>

                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="col-lg-8">
        <div class="card mb-4">
            @foreach($specifications as $specification)
                <div class="card-header">
                    <h5>{{ $specification->name }}</h5>
                </div>
                <div class="card-body">
                    <table class="table table-hover" style="margin-bottom:0!important;">
                        <tbody>
                            @foreach($specification->features as $feature)
                                <tr>
                                    <td>{{ $feature->feature_name }}</td>
                                    <td>{{ $feature->feature_value }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
@push('specification')
<script type="text/javascript">
    function confirmDelete(id) {
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
                // Submit the form after confirmation
                document.getElementById('delete-form-' + id).submit();
            }
        });
    }
</script>
@endpush
