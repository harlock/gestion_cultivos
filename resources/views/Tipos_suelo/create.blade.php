<div class="modal fade" id="modal_create_ts" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Agregar tipo de suelo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{url("tipos_suelo")}}" method="post"  >
                @csrf
                <div class="modal-body mx-3">

                    <div class="md-form form-group">

                        <input type="text" id="type_soil" name="type_soil" class="form-control "  required>
                        <label for="name_orchard">Nombre</label>

                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-dark-green">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>
