<?php

namespace App\Http\Controllers;

use App\Models\TypesSoilM;
use Illuminate\Http\Request;

class TypesSoilController extends Controller
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
        $arrayTiposSuelos=TypesSoilM::all();
        return view("Tipos_suelo.index",compact('arrayTiposSuelos'));
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
        TypesSoilM::create([

            'type_soil'=>$request->type_soil,

        ]);

        return redirect("tipos_suelo");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TypesSoilM  $typesSoilM
     * @return \Illuminate\Http\Response
     */
    public function show(TypesSoilM $typesSoilM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TypesSoilM  $typesSoilM
     * @return \Illuminate\Http\Response
     */
    public function edit(TypesSoilM $typesSoilM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TypesSoilM  $typesSoilM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypesSoilM $tipos_suelo)
    {
        $tipos_suelo->update($request->all());

        return redirect("tipos_suelo");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TypesSoilM  $typesSoilM
     * @return \Illuminate\Http\Response
     */
    public function destroy($tipos_suelo)
    {
        $del=TypesSoilM::find($tipos_suelo);
        $del->delete();
        return redirect("tipos_suelo");
    }
}
