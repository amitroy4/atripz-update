<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CancellationReturn extends Model
{
    use HasFactory;
    protected $fillable = ['title','sub_title','description'];
}
