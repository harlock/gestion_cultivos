<?php

namespace App\Http\Controllers;

use App\Models\TypesClimateM;
use Illuminate\Http\Request;

class TypesClimateController extends Controller
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
        $arrayTiposClimas=TypesClimateM::all();
        return view("Tipos_clima.index",compact('arrayTiposClimas'));
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
        TypesClimateM::create([

            'type_climate'=>$request->type_climate,

        ]);

        return redirect("tipos_clima");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TypesClimateM  $typesClimateM
     * @return \Illuminate\Http\Response
     */
    public function show(TypesClimateM $typesClimateM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TypesClimateM  $typesClimateM
     * @return \Illuminate\Http\Response
     */
    public function edit(TypesClimateM $typesClimateM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TypesClimateM  $typesClimateM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypesClimateM $tipos_clima)
    {
        $tipos_clima->update($request->all());

        return redirect("tipos_clima");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TypesClimateM  $typesClimateM
     * @return \Illuminate\Http\Response
     */
    public function destroy( $tipos_clima)
    {
        $del=TypesClimateM::find($tipos_clima);
        $del->delete();
        return redirect("tipos_clima");
    }
}
