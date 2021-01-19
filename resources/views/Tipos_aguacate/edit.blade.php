<div class="modal fade" id="modal_edit_ta_{{$tipo_agua->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Editar tipo de aguacate</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{route("tipos_agucate.update",$tipo_agua->id)}}" method="post"  >
                @csrf
                @method("PUT")
                <div class="modal-body mx-3">

                    <div class="md-form form-group">
                        <label for="name_orchard">Nombre</label>
                        <input type="text" id="type_avocado" name="type_avocado" class="form-control"   value="{{$tipo_agua->type_avocado}}"  required>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-primary">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>
