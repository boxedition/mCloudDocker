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
        Schema::create('arduinos', function (Blueprint $table) {
            $table->id();
            $table->string("imei")->unique();
            $table->string("label")->nullable();
            $table->string("img_path")->nullable();
            $table->string("obj_path")->nullable();
            $table->boolean("is_water_active")->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('arduinos');
    }
};
