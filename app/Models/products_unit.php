<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class products_unit extends Model
{
    use HasFactory;

    protected $fillable = ['product_id','unit_id'];

    public function product()
    {
        return $this->belongsTo(Products::class, 'product_id');
    }
}
