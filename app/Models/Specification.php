<?php

namespace App\Models;

use App\Models\Products;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Specification extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'name',
    ];
    public function product()
    {
        return $this->belongsTo(Products::class);
    }

    public function features()
    {
        return $this->hasMany(SpecificationFeature::class);
    }

}
