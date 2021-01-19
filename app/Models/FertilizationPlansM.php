<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FertilizationPlansM extends Model
{
    use HasFactory;
    protected $table = 'Fertilization_plans';
    protected $primaryKey='id';
    protected $fillable=['orchards_id','fertilization_date','nitrogen','phosphorus',
       'potassium','calcium', 'magnesium','iron','manganese','zinc','copper',
        'boron','file'];
}
