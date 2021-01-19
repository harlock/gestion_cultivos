<form id="for_edit_{{$tareas_huerto->id}}" action="{{route("tareas_huerto.update",[$tareas_huerto->id])}}" method="post"  >
    @csrf
    @method("PUT")

    <div class="row">
        <div class="col-3">
            <div class="md-form form-group">
                <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker">
                    <input placeholder="" type="date" id="date_work" name="date_work" class="form-control" >
                    <label for="date_work">Fecha</label>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="md-form form-group ">
                <input type="number" step="0.01" id="cost" name="cost" class="form-control"  value="{{$tareas_huerto->cost}}" required>
                <label for="cost">Costo</label>
            </div>
        </div>
        <div class="col-3">
            <div class="md-form form-group">
                <input type="number" step="0.01" id="general_expenses" name="general_expenses" class="form-control" value="{{$tareas_huerto->general_expenses}}" required>
                <label for="general_expenses">Gastos generales</label>
            </div>
        </div>


        <div class="col-3">


            <label for="general_expenses">Tipo de tarea</label>

            <select class="browser-default custom-select" name="type_job_id" required>
                <option selected>Selecciona una</option>
                @foreach($arratTipoTareas as $tarea_t)
                    <option value="{{$tarea_t->id}}" {{$tarea_t->id==$tareas_huerto->type_job_id?"selected":""}}>{{$tarea_t->job_type}}</option>
                @endforeach
            </select>


        </div>
    </div>


    <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}">

    <input type="hidden" id="orchard_id" name="orchard_id" value="{{$huerto->id}}">

    <div class="row text-center ">
        <div class="col align-self-center">
            <button id="actu_th" class="btn btn-primary">
                <div id="spiner_actu_th" class="spinner-border spinner-border-sm hide" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
                Actualizar
            </button>
        </div>
    </div>
</form>
