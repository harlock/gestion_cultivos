<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesClimateM extends Model
{
    use HasFactory;
    protected $table = 'Types_climate';
    protected $primaryKey='id';
    protected $fillable=['type_climate'];
}
