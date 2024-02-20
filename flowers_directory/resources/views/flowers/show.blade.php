@extends('layout')

@section('content')
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6">
                <b>Flower Details</b>
            </div>
            <div class="col col-md-6">
                <a href="{{ route('flowers.index') }}" class="btn btn-primary btn-sm float-end">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label"><b>Name</b></label>
            <div class="col-sm-10">{{ $flower->name }}</div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label"><b>Description</b></label>
            <div class="col-sm-10">{{ $flower->description }}</div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-form-label"><b>Image</b></label>
            <div class="col-sm-10">
                <img src="{{ asset('images/' . $flower->imgae_url) }}" width="200" class="img-thumbnail" />
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label"><b>Region</b></label>
            <div class="col-sm-10">
                @if ($regions->count() > 0)
                <ul>
                    @foreach ($regions as $region)
                        <li>{{ $region->region_name }}</li>
                    @endforeach
                </ul>
                @else
                    <p>Không có khu vực phân bố cho loài hoa này.</p>
                @endif
                
            
            </div>
        </div>
    </div>
</div>
@endsection
