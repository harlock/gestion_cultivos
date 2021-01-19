<?php

namespace App\Http\Controllers;

use App\Models\OrchardsM;
use App\Models\OrchardWorksM;
use App\Models\TypeJobM;
use App\Models\WorksdayM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class WorkdaysController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $val_poda=0;
        $val_riego =0;
        $val_maleza =0;
        $val_plaga=0;
        $val_fert =0;
        $val_cosecha =0;

        $val_cost_pruning=0;
        $val_cost_irrigation=0;
        $val_cost_undergrowth_control=0;
        $val_cost_plague_control=0;
        $val_cost_fertilization=0;
        $val_cost_harvest=0;

        if ($request->exists('check_Poda'))
        {
            $val_poda=1;
            $val_cost_pruning=$request->cost_pruning;
        }
        if ($request->exists('check_Riego'))
        {
            $val_riego=1;
            $val_cost_irrigation=$request->cost_irrigation;
        }
        if ($request->exists('check_maleza'))
        {
            $val_maleza=1;
            $val_cost_undergrowth_control=$request->cost_undergrowth_control;
        }
        if ($request->exists('check_plaga'))
        {
            $val_plaga=1;
            $val_cost_plague_control=$request->cost_plague_control;
        }
        if ($request->exists('check_Fertilizacion'))
        {
            $val_fert=1;
            $val_cost_fertilization=$request->cost_fertilization;
        }
        if ($request->exists('check_Cosecha'))
        {
            $val_cosecha =1;
            $val_cost_harvest=$request->cost_harvest;
        }



        WorksdayM::create([

            "date_work" => $request->date_work,
            "general_expenses" => $request->general_expenses,
            "pruning"=>$val_poda,
            "cost_pruning"=> $val_cost_pruning,
            "irrigation"=>$val_riego,
            "cost_irrigation"=> $val_cost_irrigation,
            "undergrowth_control"=>$val_maleza,
            "cost_undergrowth_control"=> $val_cost_undergrowth_control,
            "plague_control"=>$val_plaga,
            "cost_plague_control"=> $val_cost_plague_control,
            "fertilization"=>$val_fert,
            "cost_fertilization"=> $val_cost_fertilization,
            "harvest"=>$val_cosecha,
            "cost_harvest"=> $val_cost_harvest,
            "user_id" => $request->user_id,
            "orchard_id" => $request->orchard_id,
        ]);



        return redirect("huertos");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\WorksdayM  $worksdayM
     * @return \Illuminate\Http\Response
     */
    public function show(WorksdayM $worksdayM)
    {
        //
    }
    public function imprimir($id_huerto){

        $arrayTareasHuerto=OrchardWorksM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->get();
        $arrayJornadasHuerto=WorksdayM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->get();
        $arratTipoTareas=TypeJobM::all();
        $arrayHuertos=OrchardsM::where('state','=',1)->where('user_id','=',Auth::user()->id)->where('id','=',$id_huerto)->get();



        $suma_costos_p=OrchardWorksM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->where('state','=',1)->sum('cost');
        $suma_gg_p=OrchardWorksM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->where('state','=',1)->sum('general_expenses');

        $suma_costos_t=OrchardWorksM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->where('state','=',2)->sum('cost');
        $suma_gg_t=OrchardWorksM::where('user_id','=',Auth::user()->id)->where('orchard_id','=',$id_huerto)->where('state','=',2)->sum('general_expenses');

        $pdf = \PDF::loadView('Tareas_huerto.pdf',compact('arrayHuertos','arrayTareasHuerto','arratTipoTareas','arrayJornadasHuerto','suma_costos_p','suma_gg_p','suma_costos_t','suma_gg_t'));

        $n_huerto = DB::table('Orchards')->where('id','=',$id_huerto)->value('name_orchard');

        $dia=date("j");
        $mes=date("m");
        $año=date("Y");
        $fecha="$dia-$mes-$año";

        return $pdf->download('Tareas del huerto '.$n_huerto.','.$fecha.'.pdf');
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\WorksdayM  $worksdayM
     * @return \Illuminate\Http\Response
     */
    public function edit(WorksdayM $worksdayM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\WorksdayM  $worksdayM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, WorksdayM $jornada)
    {
        $val_poda=0;
        $val_riego =0;
        $val_maleza =0;
        $val_plaga=0;
        $val_fert =0;
        $val_cosecha =0;

        $val_cost_pruning=0;
        $val_cost_irrigation=0;
        $val_cost_undergrowth_control=0;
        $val_cost_plague_control=0;
        $val_cost_fertilization=0;
        $val_cost_harvest=0;

        if ($request->exists('check_Poda'))
        {
            $val_poda=1;
            $val_cost_pruning=$request->cost_pruning;
        }
        if ($request->exists('check_Riego'))
        {
            $val_riego=1;
            $val_cost_irrigation=$request->cost_irrigation;
        }
        if ($request->exists('check_maleza'))
        {
            $val_maleza=1;
            $val_cost_undergrowth_control=$request->cost_undergrowth_control;
        }
        if ($request->exists('check_plaga'))
        {
            $val_plaga=1;
            $val_cost_plague_control=$request->cost_plague_control;
        }
        if ($request->exists('check_Fertilizacion'))
        {
            $val_fert=1;
            $val_cost_fertilization=$request->cost_fertilization;
        }
        if ($request->exists('check_Cosecha'))
        {
            $val_cosecha =1;
            $val_cost_harvest=$request->cost_harvest;
        }



        if($request->date_work==null)
        {
            $jornada->update([

                "general_expenses" => $request->general_expenses,
                "pruning"=>$val_poda,
                "cost_pruning"=> $val_cost_pruning,
                "irrigation"=>$val_riego,
                "cost_irrigation"=> $val_cost_irrigation,
                "undergrowth_control"=>$val_maleza,
                "cost_undergrowth_control"=> $val_cost_undergrowth_control,
                "plague_control"=>$val_plaga,
                "cost_plague_control"=> $val_cost_plague_control,
                "fertilization"=>$val_fert,
                "cost_fertilization"=> $val_cost_fertilization,
                "harvest"=>$val_cosecha,
                "cost_harvest"=> $val_cost_harvest,
                "user_id" => $request->user_id,
                "orchard_id" => $request->orchard_id,
            ]);
        }
        else {
            $jornada->update([
                "date_work" => $request->date_work,
                "general_expenses" => $request->general_expenses,
                "pruning"=>$val_poda,
                "cost_pruning"=> $val_cost_pruning,
                "irrigation"=>$val_riego,
                "cost_irrigation"=> $val_cost_irrigation,
                "undergrowth_control"=>$val_maleza,
                "cost_undergrowth_control"=> $val_cost_undergrowth_control,
                "plague_control"=>$val_plaga,
                "cost_plague_control"=> $val_cost_plague_control,
                "fertilization"=>$val_fert,
                "cost_fertilization"=> $val_cost_fertilization,
                "harvest"=>$val_cosecha,
                "cost_harvest"=> $val_cost_harvest,
                "user_id" => $request->user_id,
                "orchard_id" => $request->orchard_id,
            ]);
        }

        return redirect("huertos");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WorksdayM  $worksdayM
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id_jornada)
    {
        $del=WorksdayM::find($id_jornada);

        $del->delete();
        return redirect("huertos");
    }
}
