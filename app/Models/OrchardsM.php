<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TypesTopographicM;
use App\Models\TypesSoilM;
use App\Models\TypesAbocadoM;
use App\Models\TypesClimateM;

class OrchardsM extends Model
{
    use HasFactory;
    protected $table = 'Orchards';
    protected $primaryKey='id';
    protected $fillable=['user_id','name_orchard','image','location_orchard',
        'latitude','length','altitude','type_avocado_id','type_topography_id',
        'type_soil_id','surface','type_climate_id','state'];

    public function getResponses()
    {
        return $this->hasMany(Response::class);
    }
    function getTypesTopographicM()
    {
        return $this -> hasMany( 'App\Models\TypesTopographicM', 'id', 'type_topography_id');
    }

    function getTypesSoilM()
    {
        return $this -> hasMany( 'App\Models\TypesSoilM', 'id', 'type_soil_id');
    }

    function getTypesClimateM()
    {
        return $this -> hasMany( 'App\Models\TypesClimateM', 'id', 'type_climate_id');
    }

    function getTypesAbocadoM()
    {
        return $this -> hasMany( 'App\Models\TypesAbocadoM', 'id', 'type_avocado_id');
    }
}
