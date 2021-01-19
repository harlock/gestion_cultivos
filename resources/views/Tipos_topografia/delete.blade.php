
<div class="modal fade" id="modal_delete_tt_{{$tipo_topo->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content text-center">
            <!--Header-->
            <div class="modal-header d-flex justify-content-center">
                <p class="heading">¿ Eliminar tipo de topografia {{$tipo_topo->type_topography}} ?</p>
            </div>

            <!--Footer-->
            <div class="modal-footer flex-center">
                <form action="{{route('tipos_topografia.destroy',$tipo_topo->id)}}" method="POST" >
                    @csrf
                    @method('DELETE')
                    <button TYPE="submit"  class="btn  btn-outline-danger">Sí</button>
                </form>
                <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">No</a>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
