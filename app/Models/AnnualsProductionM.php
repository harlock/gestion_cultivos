<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AnnualsProductionM extends Model
{
    use HasFactory;
    protected $table = 'Annual_productions';
    protected $primaryKey='id';
    protected $fillable=['orchards_id','ton_harvest','production_date','sale'];
}
