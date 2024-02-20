<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use App\Models\region;
class RegionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('regions')->delete();
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) {
        region::create([
            'flower_id'=>$faker->numberBetween(1,50),
            'region_name' => $faker->city, // Sử dụng name thay cho artist_name nếu bạn muốn tạo tên ngẫu nhiên
          
            
        ]);
        }
    }
}
