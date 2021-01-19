<?php

namespace App\Http\Controllers;

use App\Models\TypesAbocadoM;
use Illuminate\Http\Request;

class TypesAvocadoController extends Controller
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
        $arrayTiposAguacate=TypesAbocadoM::all();
        return view("Tipos_aguacate.index",compact('arrayTiposAguacate'));
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
        TypesAbocadoM::create([

           'type_avocado'=>$request->type_avocado,

        ]);



        return redirect("tipos_agucate");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TypesAbocadoM  $typesAbocadoM
     * @return \Illuminate\Http\Response
     */
    public function show(TypesAbocadoM $typesAbocadoM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TypesAbocadoM  $typesAbocadoM
     * @return \Illuminate\Http\Response
     */
    public function edit(TypesAbocadoM $typesAbocadoM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TypesAbocadoM  $typesAbocadoM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypesAbocadoM $tipos_agucate)
    {

        $tipos_agucate->update($request->all());

        return redirect("tipos_agucate");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TypesAbocadoM  $typesAbocadoM
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id_t_a)
    {
        $del=TypesAbocadoM::find($id_t_a);
        $del->delete();
        return redirect("tipos_agucate");
    }
}
