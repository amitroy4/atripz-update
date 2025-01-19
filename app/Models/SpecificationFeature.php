<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SpecificationFeature extends Model
{
    use HasFactory;
    protected $fillable = [
        'specification_id',
        'feature_name',
        'feature_value',
    ];
    
    public function specification()
    {
        return $this->belongsTo(Specification::class);
    }

}
