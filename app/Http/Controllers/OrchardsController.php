<?php

namespace App\Http\Controllers;

use App\Models\OrchardsM;
use App\Models\OrchardWorksM;
use App\Models\TypeJobM;
use App\Models\TypesAbocadoM;
use App\Models\TypesClimateM;
use App\Models\TypesSoilM;
use App\Models\TypesTopographicM;
use App\Models\WorksdayM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class OrchardsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $arrayTipoAguacates=TypesAbocadoM::all();
        $arrayTipoClimas=TypesClimateM::all();
        $arrayTipoSuelos=TypesSoilM::all();
        $arrayTipoTopografias=TypesTopographicM::all();
        $arrayHuertos=OrchardsM::where('state','=',1)->where('user_id','=',Auth::user()->id)->get();

        $arrayTareasHuerto=OrchardWorksM::where('user_id','=',Auth::user()->id)->get();
        $arrayJornadasHuerto=WorksdayM::where('user_id','=',Auth::user()->id)->get();
        $arratTipoTareas=TypeJobM::all();
        return view("Huertos.index",compact('arrayHuertos','arrayTipoClimas','arrayTipoSuelos','arrayTipoTopografias','arrayTipoAguacates','arrayTareasHuerto','arratTipoTareas','arrayJornadasHuerto'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $arrayTipoAguacates=TypesAbocadoM::all();
        $arrayTipoClimas=TypesClimateM::all();
        $arrayTipoSuelos=TypesSoilM::all();
        $arrayTipoTopografias=TypesTopographicM::all();
        return view("Huertos.create", compact('arrayTipoAguacates','arrayTipoClimas','arrayTipoSuelos','arrayTipoTopografias'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $path_imagen = $request->file('image')->storeAs(
            'public/storage',"{$request->file('image')->getClientOriginalName()}"
        );

        OrchardsM::create([

            'name_orchard'=>$request->name_orchard,
            'image'=>$path_imagen,
            'location_orchard'=>$request->location_orchard,
            'latitude'=>$request->latitude,
            'length'=>$request->length,
            'altitude'=>$request->altitude,
            'type_topography_id'=>$request->type_topography_id,
            'type_soil_id'=>$request->type_soil_id,
            'surface'=>$request->surface,
            'type_climate_id'=>$request->type_climate_id,
            'type_avocado_id'=>$request->type_avocado_id,
            'user_id'=>$request->user_id,
            'state'=>1

        ]);



        return redirect("huertos");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\OrchardsM  $orchardsM
     * @return \Illuminate\Http\Response
     */
    public function show(OrchardsM $orchardsM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\OrchardsM  $orchardsM
     * @return \Illuminate\Http\Response
     */
    public function edit(OrchardsM $huerto)
    {
        $arrayTipoAguacates=TypesAbocadoM::all();
        $arrayTipoClimas=TypesClimateM::all();
        $arrayTipoSuelos=TypesSoilM::all();
        $arrayTipoTopografias=TypesTopographicM::all();


        return view("Huertos.edit", compact('huerto','arrayTipoAguacates','arrayTipoClimas','arrayTipoSuelos','arrayTipoTopografias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\OrchardsM  $orchardsM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrchardsM $huerto)
    {
        if($request->image==null)
        {
            $huerto->update($request->except('image'));
        }
        else {
            $huerto->update($request->all());
        }

        return redirect("huertos");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\OrchardsM  $orchardsM
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_huerto)
    {
        $del=OrchardsM::find($id_huerto);
        Storage::delete($del->image);
        $del->delete();
        return redirect("huertos");
    }
}
