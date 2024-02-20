@extends('layout')

@section('content')
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6">
                <b>Edit Flower</b>
            </div>
            <div class="col col-md-6">
                <a href="{{ route('flowers.index') }}" class="btn btn-primary btn-sm float-end">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <form method="post" action="{{ route('flowers.update', $flower->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT') <!-- Sử dụng PUT để cập nhật -->

            <div class="row mb-3">
                <label class="col-sm-2 col-form-label"><b>Name</b></label>
                <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" value="{{ $flower->name }}" />
                </div>
            </div>

            <div class="row mb-3">
                <label class="col-sm-2 col-form-label"><b>Description</b></label>
                <div class="col-sm-10">
                    <input type="text" name="description" class="form-control" value="{{ $flower->description }}" />
                </div>
            </div>

            <div class="row mb-4">
                <label class="col-sm-2 col-form-label"><b>Image</b></label>
                <div class="col-sm-10">
                    <input type="file" name="imgae_url" />
                </div>
            </div>

            <div class="mb-3">
                <label for="regions" class="form-label">Regions</label>
                <select multiple class="form-control" id="regions" name="regions[]">
                    @foreach($regions as $region)
                        <option value="{{ $region->id }}" @if(in_array($region->id, $flower->regions->pluck('id')->toArray())) selected @endif>{{ $region->region_name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Update" />
            </div>
        </form>
    </div>
</div>
@endsection
