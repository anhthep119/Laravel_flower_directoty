@extends('layout')
@section('content')
@if($message = Session::get('success')) 
<div class="alert alert-success"> {{ $message }} </div>
 @endif 
 <div class="card"> 
    <div class="card-header"> 
        <div class="row">
            <div class="col col-md-6">
                <b>Student Data</b>
            </div> 
            <div class="col col-md-6"> 
                <a href="{{ route('flowers.create') }}" class="btn btn-success btn-sm float-end">Add</a> 
            </div> 
        </div> 
    </div> 
    <div class="card-body"> 
        <table class="table table-bordered"> 
            <tr> 
                <th>Image</th> 
                <th>Name</th> 
                <th>Description</th> 
                <th>Action</th> 
            </tr> 
            @if(count($flowers) > 0) 
            @foreach($flowers as $flower) 
            <tr> 
                <td><img src="{{ asset('images/' . $flower->imgae_url) }}" width="75" /></td> 
                <td>{{ $flower->name }}</td> 
                <td>{{ $flower->description}}</td> 
                <td> 
                    <form method="post" action="{{ route('flowers.destroy', $flower->id) }}"> 
                        @csrf 
                        @method('DELETE') 
                        <a href="{{ route('flowers.show', $flower->id) }}" class="btn btn-primary btn-sm">View</a> 
                        <a href="{{ route('flowers.edit', $flower->id) }}" class="btn btn-warning btn-sm">Edit</a> 
                        <input type="submit" class="btn btn-danger btn-sm" value="Delete" /> 
                    </form> 
                </td> 
            </tr> 
            @endforeach 
            @else 
            <tr> 
                <td colspan="5" class="text-center">No Data Found</td> </tr> 
                @endif 
            </table> 
            {!! $flowers->links() !!}
        </div> 
    </div>
@endsection