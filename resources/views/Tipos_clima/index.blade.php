@extends('Layouts.layout')
@section("title","Tipos de clima")

@section('content')
    <br><br>
    <!-- Table with panel -->
    <div class="row justify-content-md-center">
        <div class="col-7  text-center">

            <!-- Table with panel -->
            <div class="card card-cascade narrower">

                <!--Card image-->
                <div
                    class="view view-cascade gradient-card-header narrower py-2 mx-4 mb-1 d-flex justify-content-between align-items-center blue-gradient">



                    <a href="" class="white-text mx-3">Tipos de clima</a>

                    <div>
                        <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2" data-toggle="modal" data-target="#modal_create_tc"><i class="fas fa-plus mt-0"></i> Agregar</button>

                    </div>

                </div>
                <!--/Card image-->

                <div class="px-4">

                    <div class="table-wrapper">
                        <!--Table-->
                        <table class="table table-striped mb-0">
                            <thead>
                            <tr>
                                <th class="th-lg">
                                    Nombre
                                </th>
                                <th class="th-lg">
                                    Acciones
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($arrayTiposClimas as $tipo_clima)
                                <tr>
                                    <td>{{$tipo_clima->type_climate}}</td>
                                    <td>
                                        <a type="button" class="btn btn-rounded btn-primary btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_edit_tc_{{$tipo_clima->id}}"><i class="fas fa-edit"></i> Modificar</a>

                                        <a type="button" class="btn btn-rounded btn-danger btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_delete_tc_{{$tipo_clima->id}}" ><i class="fas fa-trash"></i> Eliminar</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                            <!--Table body-->
                        </table>
                        <!--Table-->
                    </div>
                </div>
            </div>
        </div>
    </div>
@include("Tipos_clima.create")

    @foreach($arrayTiposClimas as $tipo_clima)
        @include("Tipos_clima.edit")
    @endforeach

    @foreach($arrayTiposClimas as $tipo_clima)
        @include("Tipos_clima.delete")
    @endforeach


@endsection
