<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VariantAttribute extends Model
{
    use HasFactory;

    protected $fillable =['variant_id','attribute_id'];

    public function attribute()
    {
        return $this->belongsTo(ProductAttribute::class, 'attribute_id');
    }

    public function variant()
    {
        return $this->belongsTo(ProductVariant::class, 'variant_id');
    }
}
