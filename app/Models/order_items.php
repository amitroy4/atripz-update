<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order_items extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'order_id',
        'color_id',
        'price',
        'quantity',
        'eyeweartype',
        'lens_type',
        'prescription_note',
        'prescription_image',
        'lens_price',
        'item_price_withlens',
        'comment'
    ];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
    public function product()
    {
        return $this->belongsTo(Products::class,'product_id');
    }

    public function product_sizes(){
        return $this->belongsTo(Size::class,'size_id');
    }

    public function product_colors(){
        return $this->belongsTo(Color::class,'color_id');
    }
}
