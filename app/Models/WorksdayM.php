<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorksdayM extends Model
{
    use HasFactory;

    protected $table = 'Workdays';
    protected $primaryKey='id';
    protected $fillable=['orchard_id','user_id','date_work','general_expenses',

        'pruning','cost_pruning','irrigation','cost_irrigation','undergrowth_control','cost_undergrowth_control',
        'plague_control','cost_plague_control','fertilization','cost_fertilization','harvest','cost_harvest'];


    public function getResponses()
    {
        return $this->hasMany(Response::class);
    }

}
