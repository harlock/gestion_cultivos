<?php

namespace App\Http\Controllers;

use App\Models\TypesTopographicM;
use Illuminate\Http\Request;

class TypesTopographicController extends Controller
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
        $arrayTiposTopografias=TypesTopographicM::all();
        return view("Tipos_topografia.index",compact('arrayTiposTopografias'));
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
        TypesTopographicM::create([

            'type_topography'=>$request->type_topography,

        ]);

        return redirect("tipos_topografia");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TypesTopographicM  $typesTopographicM
     * @return \Illuminate\Http\Response
     */
    public function show(TypesTopographicM $typesTopographicM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TypesTopographicM  $typesTopographicM
     * @return \Illuminate\Http\Response
     */
    public function edit(TypesTopographicM $typesTopographicM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TypesTopographicM  $typesTopographicM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypesTopographicM $tipos_topografium)
    {
        $tipos_topografium->update($request->all());

        return redirect("tipos_topografia");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TypesTopographicM  $typesTopographicM
     * @return \Illuminate\Http\Response
     */
    public function destroy( $tipos_topografium)
    {
        $del=TypesTopographicM::find($tipos_topografium);
        $del->delete();
        return redirect("tipos_topografia");
    }
}
