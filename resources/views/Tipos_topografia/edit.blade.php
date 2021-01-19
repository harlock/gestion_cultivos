<div class="modal fade" id="modal_edit_tt_{{$tipo_topo->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Editar tipo de topografia</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{route("tipos_topografia.update",$tipo_topo->id)}}" method="post"  >
                @csrf
                @method("PUT")
                <div class="modal-body mx-3">
                    <div class="md-form form-group">
                        <label for="name_orchard">Nombre</label>
                        <input type="text" id="type_topography" name="type_topography" class="form-control"   value="{{$tipo_topo->type_topography}}"  required>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-primary">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>
