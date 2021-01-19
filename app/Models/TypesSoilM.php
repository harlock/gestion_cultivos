<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesSoilM extends Model
{
    use HasFactory;
    protected $table = 'Types_soil';
    protected $primaryKey='id';
    protected $fillable=['type_soil'];
}
