<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use App\Models\flower;

class FlowerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('flowers')->delete();
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) {
        flower::create([
            'name' => $faker->name, // Sử dụng name thay cho artist_name nếu bạn muốn tạo tên ngẫu nhiên
            'description' => $faker->text,
            'imgae_url' => $faker->imageUrl(),
        ]);
        }
    }
}
