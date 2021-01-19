<form id="for_edit_{{$jornada_huerto->id}}" action="{{route("jornada.update",[$jornada_huerto->id])}}" method="post"  >
    @csrf
    @method("PUT")

    <div class="row">
        <div class="col-6">
            <div class="md-form form-group">
                <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker">
                    <input placeholder="" type="date" id="date_work" name="date_work" class="form-control" >
                    <label for="date_work">Fecha</label>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="md-form form-group ">
                <input type="number" step="0.01" id="general_expenses" name="general_expenses" class="form-control" value="{{$jornada_huerto->general_expenses}}"  required>
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
                        <input type="checkbox" class="form-check-input"  id="check_Poda_{{$jornada_huerto->id}}" name="check_Poda"  @if ($jornada_huerto->pruning==1) checked @else  @endif onchange="fcp()">
                        <label class="form-check-label" for="check_Poda_{{$jornada_huerto->id}}">Poda</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_pruning" name="cost_pruning" class="form-control"  value="{{$jornada_huerto->cost_pruning}}"  >
                        <label for="cost_pruning">Cosoto de poda</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="row align-items-center text-left">
                <div class="col-sm-4 ">
                    <div class="form-check form-check">
                        <input type="checkbox" class="form-check-input" id="check_Riego_{{$jornada_huerto->id}}" name="check_Riego" @if ($jornada_huerto->irrigation==1) checked @else  @endif onchange="fcr()">
                        <label class="form-check-label" for="check_Riego_{{$jornada_huerto->id}}">Riego</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_irrigation" name="cost_irrigation" class="form-control" value="{{$jornada_huerto->cost_irrigation}}">
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
                        <input type="checkbox" class="form-check-input" id="check_maleza_{{$jornada_huerto->id}}" name="check_maleza" @if ($jornada_huerto->undergrowth_control==1) checked @else  @endif  onchange="fcm()">
                        <label class="form-check-label" for="check_maleza_{{$jornada_huerto->id}}">Control de malezas</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_undergrowth_control" name="cost_undergrowth_control" class="form-control" value="{{$jornada_huerto->cost_undergrowth_control}}">
                        <label for="cost_undergrowth_control">Cosoto de control de malezas</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="row align-items-center">
                <div class="col-sm-4">
                    <div class="form-check form-check-inline">
                        <input type="checkbox" class="form-check-input" id="check_plaga_{{$jornada_huerto->id}}" name="check_plaga"  @if ($jornada_huerto->plague_control==1) checked @else  @endif onchange="fcpl()">
                        <label class="form-check-label" for="check_plaga_{{$jornada_huerto->id}}">Control de plagas</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_plague_control" name="cost_plague_control" class="form-control"  value="{{$jornada_huerto->cost_plague_control}}" >
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
                        <input type="checkbox" class="form-check-input" id="check_Fertilizacion_{{$jornada_huerto->id}}" name="check_Fertilizacion" @if ($jornada_huerto->fertilization==1) checked @else  @endif onchange="foo()">
                        <label class="form-check-label" for="check_Fertilizacion_{{$jornada_huerto->id}}">Fertilizacion</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_fertilization" name="cost_fertilization" class="form-control" value="{{$jornada_huerto->cost_fertilization}}" >
                        <label for="cost_fertilization">Cosoto de fertilizacion</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="row align-items-center">
                <div class="col-sm-4">
                    <div class="form-check form-check-inline">
                        <input type="checkbox" class="form-check-input" id="check_Cosecha_{{$jornada_huerto->id}}" name="check_Cosecha"  @if ($jornada_huerto->harvest==1) checked @else  @endif onchange="fcc()">
                        <label class="form-check-label" for="check_Cosecha_{{$jornada_huerto->id}}">Cosecha</label>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="md-form form-group ">
                        <input type="number" step="0.01" id="cost_harvest" name="cost_harvest" class="form-control" value="{{$jornada_huerto->cost_harvest}}">
                        <label for="cost_harvest">Cosoto de cosechas</label>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}">

    <input type="hidden" id="orchard_id" name="orchard_id" value="{{$huerto->id}}">


    <div class="row text-center ">
        <div class="col align-self-center">
            <button id="actu_th" class="btn btn-primary">
                <div id="spiner_actu_th" class="spinner-border spinner-border-sm hide" role="status">
                    <span class="sr-only">Cargando...</span>
                </div>
                Actualizar
            </button>
        </div>
    </div>
</form>
