<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TypeJobM;

class OrchardWorksM extends Model
{
    use HasFactory;
    protected $table = 'Orchard_works';
    protected $primaryKey='id';
    protected $fillable=['orchard_id','user_id','date_work','cost',
        'general_expenses','type_job_id','state'];


    public function getResponses()
    {
        return $this->hasMany(Response::class);
    }
    function getTypeJobM()
    {
        return $this -> hasMany( 'App\Models\TypeJobM', 'id', 'type_job_id');
    }
}
