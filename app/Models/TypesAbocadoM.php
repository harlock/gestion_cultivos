<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesAbocadoM extends Model
{
    use HasFactory;
    protected $table = 'Types_avocado';
    protected $primaryKey='id';
    protected $fillable=['type_avocado'];


}
