<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesTopographicM extends Model
{
    use HasFactory;
    protected $table = 'Types_topographic';
    protected $primaryKey='id';
    protected $fillable=['type_topography'];
}
