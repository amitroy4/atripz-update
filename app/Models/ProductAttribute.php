<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    use HasFactory;

    protected $fillable =['product_id','name','value'];

    public function product()
    {
        return $this->belongsTo(Products::class, 'product_id');
    }

    public function variants()
    {
        return $this->belongsToMany(ProductVariant::class, 'variant_attributes', 'attribute_id', 'variant_id');
    }

}
