@extends('Layouts.layout')
@section("title","Tipos de tareas")

@section('content')
    <br><br>
    <!-- Table with panel -->
    <div class="row justify-content-md-center">
        <div class="col-7  text-center">

            <!-- Table with panel -->
            <div class="card card-cascade narrower">

                <!--Card image-->
                <div
                    class="view view-cascade gradient-card-header narrower py-2 mx-4 mb-1 d-flex justify-content-between align-items-center aqua-gradient">



                    <a href="" class="white-text mx-3">Tipos de tareas de huerto</a>

                    <div>
                        <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2" data-toggle="modal" data-target="#modal_create_tta"><i class="fas fa-plus mt-0"></i> Agregar</button>

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
                            @foreach($arrayTiposTareas as $tipo_tarea)
                                <tr>
                                    <td>{{$tipo_tarea->job_type}}</td>
                                    <td>
                                        <a type="button" class="btn btn-rounded btn-primary btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_edit_tta_{{$tipo_tarea->id}}"><i class="fas fa-edit"></i> Modificar</a>

                                        <a type="button" class="btn btn-rounded btn-danger btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_delete_tta_{{$tipo_tarea->id}}" ><i class="fas fa-trash"></i> Eliminar</a>
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

    @include("Tipos_tarea.create")

    @foreach($arrayTiposTareas as $tipo_tarea)
        @include("Tipos_tarea.edit")
    @endforeach

    @foreach($arrayTiposTareas as $tipo_tarea)
        @include("Tipos_tarea.delete")
    @endforeach

@endsection
