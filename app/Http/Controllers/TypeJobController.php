<?php

namespace App\Http\Controllers;

use App\Models\TypeJobM;
use Illuminate\Http\Request;

class TypeJobController extends Controller
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
        $arrayTiposTareas=TypeJobM::all();
        return view("Tipos_tarea.index",compact('arrayTiposTareas'));
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
        TypeJobM::create([

            'job_type'=>$request->job_type,

        ]);

        return redirect("tipos_tarea");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TypeJobM  $typeJobM
     * @return \Illuminate\Http\Response
     */
    public function show(TypeJobM $typeJobM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TypeJobM  $typeJobM
     * @return \Illuminate\Http\Response
     */
    public function edit(TypeJobM $typeJobM)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TypeJobM  $typeJobM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypeJobM $tipos_tarea)
    {
        $tipos_tarea->update($request->all());

        return redirect("tipos_tarea");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TypeJobM  $typeJobM
     * @return \Illuminate\Http\Response
     */
    public function destroy($tipos_tarea)
    {
        $del=TypeJobM::find($tipos_tarea);
        $del->delete();
        return redirect("tipos_tarea");
    }
}
