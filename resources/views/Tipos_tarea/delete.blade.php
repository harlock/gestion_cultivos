
<div class="modal fade" id="modal_delete_tta_{{$tipo_tarea->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content text-center">
            <!--Header-->
            <div class="modal-header d-flex justify-content-center">
                <p class="heading">¿ Eliminar tipo de tarea {{$tipo_tarea->job_type}} ?</p>
            </div>

            <!--Footer-->
            <div class="modal-footer flex-center">
                <form action="{{route('tipos_tarea.destroy',$tipo_tarea->id)}}" method="POST" >
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
