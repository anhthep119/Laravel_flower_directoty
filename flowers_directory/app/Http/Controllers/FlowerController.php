<?php

namespace App\Http\Controllers;

use App\Models\flower;
use Illuminate\Http\Request;
use App\Models\region;
class FlowerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $flowers=flower::latest()->paginate(5);
        return view('flowers.index',compact('flowers'))->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $regions = Region::all(); // Lấy danh sách khu vực
        return view('flowers.create', compact('regions'));
    
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([

            'name' => 'required',
            
            'description' => 'required',
            
            'imgae_url' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048|dimensions:min_width=100,min_height=100,max_width=1000,max_height=1000',
            'regions' => 'array', // Đảm bảo trường regions là một mảng
            ]);
            
            $file_name = time() . '.' . request()->imgae_url->getClientOriginalExtension();
            
            request()->imgae_url->move(public_path('images'), $file_name);
            
            $flower = new flower();
            
            $flower->name = $request->name;
            
            $flower->description = $request->description;
            
            $flower->imgae_url = $file_name;
           
            $flower->save();
             // Lưu các khu vực phân bố liên quan đến loài hoa
             if ($request->has('regions')) {
                $flower->regions()->attach($request->regions);
            }
            return redirect()->route('flowers.index')->with('success', 'Student Added successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(flower $flower)
    {
        $regions=  $flower->regions; //lay ra vung tuong ung voi loai hoa
        return view('flowers.show',compact('flower','regions'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(flower $flower)
    {
        $regions = Region::all(); // Lấy danh sách khu vực
        return view('flowers.edit', compact('flower', 'regions'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, flower $flower)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'imgae_url' => 'image|mimes:jpg,png,jpeg,gif,svg|max:2048|dimensions:min_width=100,min_height=100,max_width=1000,max_height=1000',
            'regions' => 'array',
        ]);
    
        if ($request->hasFile('imgae_url')) {
            $file_name = time() . '.' . $request->imgae_url->getClientOriginalExtension();
            $request->imgae_url->move(public_path('images'), $file_name);
            $flower->imgae_url = $file_name;
        }
    
        $flower->name = $request->name;
        $flower->description = $request->description;
        $flower->save();
    
        // Lưu các khu vực phân bố liên quan đến loài hoa
        $flower->regions()->sync($request->regions);
    
        return redirect()->route('flowers.index')->with('success', 'Flower Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(flower $flower)
    {
        
        $flower->delete();

        return redirect()->route('flowers.index')->with('success', 'Student Data deleted successfully');
    }
}
