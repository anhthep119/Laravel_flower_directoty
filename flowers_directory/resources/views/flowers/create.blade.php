@extends('layout') 
@section('content') 
@if($errors->any()) 
<div class="alert alert-danger"> 
    <ul> 
        @foreach($errors->all() as $error) 
        <li>{{ $error }}</li> 
        @endforeach 
    </ul> 
</div> 
@endif 
<div class="card"> 
    <div class="card-header">Add Flowers</div> 
    <div class="card-body"> 
        <form method="post" action="{{ route('flowers.store') }}" enctype="multipart/form-data"> 
            @csrf 
            <div class="row mb-3"> 
                <label class="col-sm-2 col-label-form"> Name</label> 
                <div class="col-sm-10"> 
                    <input type="text" name="name" class="form-control" /> 
                </div> 
            </div> 
            <div class="row mb-3"> 
                <label class="col-sm-2 col-label-form">Description</label> 
                <div class="col-sm-10"> 
                    <input type="text" name="description" class="form-control" /> 
                </div> 
            </div> 
            
            <div class="row mb-4"> 
                <label class="col-sm-2 col-label-form">Flower Image</label>
                <div class="col-sm-10"> 
                    <input type="file" name="imgae_url" /> 
                </div> 
            </div> 
            <div class="mb-3">
                <label for="regions" class="form-label">Regions</label>
                <select multiple class="form-select" id="regions" name="regions[]">

                    <!-- Duyệt qua danh sách khu vực và hiển thị những tùy chọn cho người dùng -->
                    @foreach($regions as $region)
                        <option value="{{ $region->id }}">{{ $region->region_name }}</option>
                    @endforeach
                </select>
            </div>
            
            <div class="text-center"> 
                    <input type="submit" class="btn btn-primary" value="Add" /> 
            </div> 
        </form> 
    </div> 
</div> 
@endsection