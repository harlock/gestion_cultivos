<?php

namespace App\Http\Controllers;

use App\Models\OrchardWorksM;
use App\Models\TypeJobM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class OrchardWorksController extends Controller
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

        OrchardWorksM::create([


          "date_work" => $request->date_work,
          "cost" => $request->cost,
          "general_expenses" => $request->general_expenses,
          "type_job_id" => $request->type_job_id,
          "user_id" => $request->user_id,
          "orchard_id" => $request->orchard_id,
            "state" => 1,
        ]);


        return redirect("huertos");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\OrchardWorksM  $orchardWorksM
     * @return \Illuminate\Http\Response
     */
    public function show(OrchardWorksM $orchardWorksM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\OrchardWorksM  $orchardWorksM
     * @return \Illuminate\Http\Response
     */
    public function edit(OrchardWorksM $orchardWorksM)
    {
        $arrayTareasHuerto=OrchardWorksM::where('user_id','=',Auth::user()->id)->get();
        $arratTipoTareas=TypeJobM::all();
        return view("Huertos.index",compact('arrayTareasHuerto','arratTipoTareas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\OrchardWorksM  $orchardWorksM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrchardWorksM $tareas_huerto)
    {

        if($request->date_work==null)
        {
            $tareas_huerto->update($request->except('date_work'));
        }
        else {
            $tareas_huerto->update(
                $request->all()
            );
        }

        return redirect("huertos");
    }

    public function tarea_realizada($id)
    {
        DB::delete('update Orchard_works set state=2  where id = ?',[$id]);
        return redirect("huertos");
    }

    public function tarea_pendiente($id)
    {
        DB::delete('update Orchard_works set state=1  where id = ?',[$id]);
        return redirect("huertos");
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\OrchardWorksM  $orchardWorksM
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id_tarea)
    {

        $del=OrchardWorksM::find($id_tarea);
        $del->delete();
        return redirect("huertos");
    }
}
