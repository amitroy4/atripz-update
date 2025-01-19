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
        Schema::create('specification_features', function (Blueprint $table) {
            $table->id();
            $table->foreignId('specification_id')->constrained()->onDelete('cascade');
            $table->string('feature_name')->nullable();
            $table->text('feature_value')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('specification_features');
    }
};
