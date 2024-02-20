<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class flower extends Model
{
    use HasFactory;
    protected $fillable =[
            'name',
            'description',
            'imgae_url',
            
    ];
    public function regions()
{
    return $this->belongsToMany(Region::class, 'flower_regions', 'flower_id', 'region_id');
}

}
