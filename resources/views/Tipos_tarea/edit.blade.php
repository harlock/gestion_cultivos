<div class="modal fade" id="modal_edit_tta_{{$tipo_tarea->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Editar tipo de tarea</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{route("tipos_tarea.update",$tipo_tarea->id)}}" method="post"  >
                @csrf
                @method("PUT")
                <div class="modal-body mx-3">
                    <div class="md-form form-group">
                        <label for="name_orchard">Nombre</label>
                        <input type="text" id="job_type" name="job_type" class="form-control"   value="{{$tipo_tarea->job_type}}"  required>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-primary">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>
