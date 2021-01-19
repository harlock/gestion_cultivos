
<div class="modal fade right lg" id="modalPoll-1_{{$huerto->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-lg modal-full-height modal-right modal-notify modal-success" role="document">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header " style="background: #689f38 ">
                <p class="heading lead">Gestion de tareas del huerto <strong>{{$huerto->name_orchard}}</strong>
                </p>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">×</span>
                </button>
            </div>

            <!--Body-->
            <div class="modal-body">
                <ul class="nav  md-pills ">
                    <li class="nav-item pills-warning">
                        <a class="nav-link active px-1 text-dark" data-toggle="tab" href="#panel11_{{$huerto->id}}" role="tab">Pendientes</a>
                    </li>
                    <li class="nav-item pills-success">
                        <a class="nav-link px-1" data-toggle="tab" href="#panel12_{{$huerto->id}}" role="tab">Terminadas</a>
                    </li>
                    <li class="nav-item pills-dark-green">
                        <a class="nav-link px-1" data-toggle="tab" href="#panel14_{{$huerto->id}}" role="tab" >Jornada</a>
                    </li>
                    <li class="nav-item pills-dark-green">
                        <a class="nav-link px-1" data-toggle="tab" href="#panel13_{{$huerto->id}}" role="tab">Agendar</a>
                    </li>
                    <li class="nav-item pills-danger">
                        <a class="nav-link px-1" data-toggle="tab" href="#panel15_{{$huerto->id}}" role="tab">Generar PDF</a>
                    </li>


                </ul>

                <!-- Tab panels -->
                <div class="tab-content pt-0">

                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="panel11_{{$huerto->id}}" role="tabpanel">
                        <br>
                        <div class="text-center">
                            <i class="fas fa-hourglass-half fa-2x mb-3 animated rotateIn text-warning"></i>
                        </div>

                        <table class="table" id="tareas_pendientes">
                            <thead>
                            <tr class="text-center">
                                <th scope="col">Tarea</th>
                                <th scope="col">Costo</th>
                                <th scope="col">Gatos generales</th>
                                <th scope="col">Fecha</th>
                                <th  scope="col">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>


                            @foreach($arrayTareasHuerto->where('state','=',1)->where('orchard_id','=',$huerto->id) as $tareas_huerto)


                                <tr class="text-center">
                                    <td>{{$tareas_huerto->getTypeJobM[0]->job_type}}</td>
                                    <td>$ {{$tareas_huerto->cost}}</td>
                                    <td>$ {{$tareas_huerto->general_expenses}}</td>
                                    <td>{{date('d/m/Y', strtotime($tareas_huerto->date_work))}}</td>
                                    <td class="row">
                                        <div class="col-12 text-center">
                                            <a class="text-decoration-none px-1 collapse_tarea"  role="button" data-toggle="collapse"  href="#collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}" aria-expanded="false"  aria-controls="collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}" data-toggle_2="tooltip"  data-placement="bottom" title="Editar"><i class="fas fa-pen text-primary fa-lg"></i></a>

                                            <a href="tarea_realizada/{{$tareas_huerto->id}}" class="text-decoration-none px-2" data-toggle_2="tooltip"  data-placement="bottom"  title="Marcar como  terminada"><i class="fas fa-check text-success fa-lg"></i></a>

                                            <a href="#" class="text-decoration-none" data-toggle="modal" data-target="#modal_delete_tarea-{{ $tareas_huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom"  title="Eliminar"><i class="fas fa-trash text-danger fa-lg"></i></a>
                                        </div>
                                    </td>


                                </tr>
                                <div class="collapse content_tareas" id="collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}">

                                    <div class="mt-3">
                                        <div class="text-right">
                                            <a href="#!" class="collapse_tarea"><i class="fas fa-times fa-1x mb-3 animated rotateIn text-danger"></i></a>
                                        </div>
                                        @include("Tareas_huerto.edit")
                                    </div>
                                </div>


                            @endforeach
                            </tbody>
                        </table>


                    </div>
                    <!--/.Panel 1-->

                    <!--Panel 2-->
                    <div class="tab-pane fade" id="panel12_{{$huerto->id}}" role="tabpanel">
                        <br>

                        <div class="text-center">
                            <i class="fas fa-check fa-2x mb-3 animated rotateIn text-success"></i>

                        </div>

                        <table class="table" id="tareas_terminadas">
                            <thead>
                            <tr>
                                <th scope="col">Tarea</th>
                                <th scope="col">Costo</th>
                                <th scope="col">Gatos generales</th>
                                <th scope="col">Fecha</th>
                                <th  scope="col">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $tarea=null;
                            @endphp
                            @foreach($arrayTareasHuerto->where('state','=',2)->where('orchard_id','=',$huerto->id) as $tareas_huerto)
                                <tr class="text-center">
                                    <td>{{$tareas_huerto->getTypeJobM[0]->job_type}}</td>
                                    <td>$ {{$tareas_huerto->cost}}</td>
                                    <td>$ {{$tareas_huerto->general_expenses}}</td>
                                    <td>{{date('d/m/Y', strtotime($tareas_huerto->date_work))}}</td>
                                    <td class="row">
                                        <div class="col-12 text-center">
                                            <a class="text-decoration-none px-1 collapse_tarea" data-toggle="collapse" role="button"  href="#collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}" aria-expanded="false"  aria-controls="collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}"  data-toggle_2="tooltip"  data-placement="bottom" title="Editar"><i class="fas fa-pen text-primary fa-lg"></i></a>

                                            <a href="tarea_pendiente/{{$tareas_huerto->id}}" class="text-decoration-none px-2"  data-toggle_2="tooltip"  data-placement="bottom" title="Marcar como pendiente"><i class="fas fa-hourglass-half text-warning fa-lg"></i></a>

                                            <a href="#" class="text-decoration-none" data-toggle="modal" data-target="#modal_delete_tarea-{{ $tareas_huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom"  title="Eliminar"><i class="fas fa-trash text-danger fa-lg"></i></a>
                                        </div>
                                    </td>


                                </tr>
                                <div class="collapse content_tareas" id="collapseExample{{$huerto->id}}_{{$tareas_huerto->id}}">

                                    <div class="mt-3">
                                        <div class="text-right">
                                            <a href="#!" class="collapse_tarea"><i class="fas fa-times fa-1x mb-3 animated rotateIn text-danger"></i></a>
                                        </div>
                                        @include("Tareas_huerto.edit")
                                    </div>
                                </div>
                            @endforeach
                            </tbody>
                        </table>

                    </div>
                    <!--/.Panel 2-->

                    <!--Panel 3-->
                    <div class="tab-pane fade" id="panel13_{{$huerto->id}}" role="tabpanel">
                        <br>
                        @include("Tareas_huerto.create")
                    </div>
                    <!--/.Panel 3-->

                    <div class="tab-pane fade" id="panel14_{{$huerto->id}}" role="tabpanel">
                        <br>

                        <div class="text-center">
                            <i class="fas fa-clipboard-list fa-2x mb-3 animated rotateIn indigo-text"></i>
                        </div>

                        <table class="table" id="tareas_pendientes">
                            <thead>
                            <tr class="text-center">
                                <th scope="col">Fecha</th>
                                <th scope="col">Gatos gen.</th>
                                <th scope="col">Poda</th>
                                <th scope="col">Riego</th>
                                <th scope="col">Control de Maleza</th>
                                <th scope="col">Control de Plagas</th>
                                <th scope="col">Fertilizacion</th>
                                <th scope="col">Cosecha</th>


                                <th  scope="col">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>


                            @foreach($arrayJornadasHuerto->where('orchard_id','=',$huerto->id) as $jornada_huerto)


                                <tr class="text-center">
                                    <td>{{date('d/m/Y', strtotime($jornada_huerto->date_work))}}</td>
                                    <td>$ {{$jornada_huerto->general_expenses}}</td>
                                    <td>
                                        @if ($jornada_huerto->pruning==1)
                                            <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_pruning}}
                                        @else
                                            No
                                        @endif
                                    </td>
                                    <td>
                                        @if ($jornada_huerto->irrigation==1)
                                            <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_irrigation}}
                                        @else
                                            No
                                        @endif
                                    </td>
                                    <td>
                                        @if ($jornada_huerto->undergrowth_control==1)
                                            <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_undergrowth_control}}
                                        @else
                                            No
                                        @endif
                                    </td>
                                    <td>
                                        @if ($jornada_huerto->plague_control==1)
                                            <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_plague_control}}
                                        @else
                                            No
                                        @endif
                                    </td>
                                    <td>
                                        @if ($jornada_huerto->fertilization==1)
                                            <strong>Sí</strong> <br>$ {{$jornada_huerto->cost_fertilization}}
                                        @else
                                            No
                                        @endif
                                    </td>
                                    <td>

                                        @if ($jornada_huerto->harvest==1)
                                            <strong>Sí</strong> <br>$ {{$jornada_huerto->cost_harvest}}
                                        @else
                                            No
                                        @endif
                                    </td>

                                    <td class="row">
                                        <div class="col-12 text-center">
                                            <a class="text-decoration-none px-1 collapse_jornada"  role="button" data-toggle="collapse"  href="#collapseExample{{$huerto->id}}_{{$jornada_huerto->id}}" aria-expanded="false"  aria-controls="collapseExample{{$huerto->id}}_{{$jornada_huerto->id}}" data-toggle_2="tooltip"  data-placement="bottom" title="Editar"><i class="fas fa-pen text-primary fa-lg"></i></a>

                                            <a href="#" class="text-decoration-none" data-toggle="modal" data-target="#modal_delete_jornada-{{ $jornada_huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom"  title="Eliminar"><i class="fas fa-trash text-danger fa-lg"></i></a>
                                        </div>
                                    </td>


                                </tr>
                                <div class="collapse content_jornadas" id="collapseExample{{$huerto->id}}_{{$jornada_huerto->id}}">

                                    <div class="mt-3">
                                        <div class="text-right">
                                            <a href="#!" class="collapse_jornada"><i class="fas fa-times fa-1x mb-3 animated rotateIn text-danger"></i></a>
                                        </div>
                                        @include("Jornadas.edit")
                                    </div>
                                </div>


                            @endforeach
                            </tbody>
                        </table>
                    </div>

                    <!--Panel 5-->
                    <div class="tab-pane fade text-center" id="panel15_{{$huerto->id}}" role="tabpanel">
                        <br>
                        <div class="row">
                            <div class="col-9">
                                <p>
                                    Genere un PDF con las tareas de cuidado respectivas del huerto “{{$huerto->name_orchard}}”, enlistando el tipo de tarea, estado y costos, así como también un listado de las jornadas con sus respectivas tareas y costos.
                                </p>
                            </div>
                            <div class="col-3">
                                <a class="btn btn-outline-danger btn-rounded" href="imprimir/{{$huerto->id}}" role="button">
                                    <i class="fas fa-file-download text-danger"></i> Descargar
                                </a>
                            </div>
                        </div>



                        <img src="{{url('/img/Captura_PDF.jpg')}}"   class="img-thumbnail" alt="..." />




                    </div>
                    <!--/.Panel 5-->


                </div>

                <hr>

            </div>

        </div>
    </div>
</div>

