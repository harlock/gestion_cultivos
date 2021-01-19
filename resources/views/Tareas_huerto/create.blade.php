


<div class="">
    <ul class="nav md-pills">
        <li class="nav-item pills-dark-green">
            <a class="nav-link active" data-toggle="tab" href="#panel11" role="tab">1 tarea</a>
        </li>
        <li class="nav-item pills-dark-green">
            <a class="nav-link " data-toggle="tab" href="#panel12" role="tab">Jornada</a>
        </li>
    </ul>
</div>


<!-- Tab panels -->
<div class="tab-content pt-0">

    <!--Panel 1-->
    <div class="tab-pane fade in show active" id="panel11" role="tabpanel">
        <form action="{{url("tareas_huerto")}}" method="post" id="form_create_{{$huerto->id}}">
            @csrf
            <div class="md-form form-group">
                <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker">
                    <input placeholder="" type="date" id="date_work" name="date_work" class="form-control">
                    <label for="date_work">Fecha</label>
                </div>
            </div>

            <div class="md-form form-group ">
                <input type="number" step="0.01" id="cost" name="cost" class="form-control">
                <label for="cost">Costo</label>
            </div>

            <div class="md-form form-group">
                <input type="number" step="0.01" id="general_expenses" name="general_expenses" class="form-control">
                <label for="general_expenses">Gastos generales</label>
            </div>

            <div class="form-group py-2">
                <label for="type_job_id_{{$huerto->id}}">Tipo de Tarea</label>
                <select class="mdb-select md-form colorful-select dropdown-ins" name="type_job_id" id="type_job_id_{{$huerto->id}}" required>
                    <option value="">Selecciona uno</option>
                    @foreach($arratTipoTareas as $tarea)
                        <option value="{{$tarea->id}}" >{{$tarea->job_type}}</option>
                    @endforeach
                </select>
            </div>

            <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}">

            <input type="hidden" id="orchard_id" name="orchard_id" value="{{$huerto->id}}">

            <div class="row text-center pt-2">
                <div class="col align-self-center">
                    <button type="submit" class="btn btn-dark-green">Registrar</button>
                </div>
            </div>
        </form>

    </div>
    <!--/.Panel 1-->

    <!--Panel 2-->
    <div class="tab-pane fade text-center" id="panel12" role="tabpanel">
        <form action="{{url("jornada")}}" method="post" id="form_create_jor_{{$huerto->id}}">
            @csrf
            <div class="row">
                <div class="col-6">
                    <div class="md-form form-group">
                        <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker">
                            <input placeholder="" type="date" id="date_work" name="date_work" class="form-control" required>
                            <label for="date_work">Fecha</label>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="general_expenses" name="general_expenses" class="form-control" required>
                        <label for="general_expenses">Gastos generales</label>
                    </div>
                </div>
            </div>

            <p>Tareas</p>

            <div class="row">
                <div class="col-6">
                    <div class="row align-items-center">
                        <div class="col-sm-4">
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input"  id="check_Poda" name="check_Poda" onchange="fcp()">
                                <label class="form-check-label" for="check_Poda">Poda</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_pruning" name="cost_pruning" class="form-control"  disabled>
                                <label for="cost_pruning">Cosoto de poda</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row align-items-center text-left">
                        <div class="col-sm-4 ">
                            <div class="form-check form-check">
                                <input type="checkbox" class="form-check-input" id="check_Riego" name="check_Riego" onchange="fcr()">
                                <label class="form-check-label" for="check_Riego">Riego</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_irrigation" name="cost_irrigation" class="form-control" disabled>
                                <label for="cost_irrigation">Cosoto de riego</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <div class="row align-items-center">
                        <div class="col-sm-4">
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="check_maleza" name="check_maleza"  onchange="fcm()">
                                <label class="form-check-label" for="check_maleza">Control de malezas</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_undergrowth_control" name="cost_undergrowth_control" class="form-control" disabled>
                                <label for="cost_undergrowth_control">Cosoto de control de malezas</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row align-items-center">
                        <div class="col-sm-4">
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="check_plaga" name="check_plaga"  onchange="fcpl()">
                                <label class="form-check-label" for="check_plaga">Control de plagas</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_plague_control" name="cost_plague_control" class="form-control" disabled>
                                <label for="cost_plague_control">Cosoto de control de plagas</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-6">
                    <div class="row align-items-center">
                        <div class="col-sm-4">
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="check_Fertilizacion" name="check_Fertilizacion" onchange="foo()">
                                <label class="form-check-label" for="check_Fertilizacion">Fertilizacion</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_fertilization" name="cost_fertilization" class="form-control" disabled>
                                <label for="cost_fertilization">Cosoto de fertilizacion</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row align-items-center">
                        <div class="col-sm-4">
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="check_Cosecha" name="check_Cosecha" onchange="fcc()">
                                <label class="form-check-label" for="check_Cosecha">Cosecha</label>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="md-form form-group ">
                                <input type="number" step="0.01" id="cost_harvest" name="cost_harvest" class="form-control" disabled>
                                <label for="cost_harvest">Cosoto de cosechas</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}">

            <input type="hidden" id="orchard_id" name="orchard_id" value="{{$huerto->id}}">

            <br>
            <div class="row text-center pt-2">
                <div class="col align-self-center">
                    <button type="submit" class="btn btn-dark-green">Registrar</button>
                </div>
            </div>
        </form>
    </div>
    <!--/.Panel 2-->


</div>
