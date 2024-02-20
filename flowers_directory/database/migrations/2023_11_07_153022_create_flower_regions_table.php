<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('flower_regions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('flower_id');
            $table->unsignedBigInteger('region_id');
            $table->timestamps();
        });

        Schema::table('flower_regions', function (Blueprint $table) {
            $table->foreign('flower_id')->references('id')->on('flowers');
            $table->foreign('region_id')->references('id')->on('regions');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('flower_regions');
    }
};
