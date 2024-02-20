<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use App\Models\flower_region;

class Flower_regionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('flower_regions')->delete();
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) {
        flower_region::create([
            'flower_id'=>$faker->numberBetween(1,50),
            'region_id'=>$faker->numberBetween(1,50),
        ]);
        }
    }
}
