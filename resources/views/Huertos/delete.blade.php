
<div class="modal fade" id="modal_delete_huerto-{{ $huerto->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content text-center">
            <!--Header-->
            <div class="modal-header d-flex justify-content-center">
                <p class="heading">¿ Eliminar huerto {{$huerto->name_orchard}} ?</p>
            </div>

            <!--Body-->
            <div class="modal-body">
                <p>Se eliminarán TODOS los registros, planes de fertilización y tareas de este huerto.</p>

                <i class="fas fa-times fa-2x animated rotateIn"></i>

            </div>

            <!--Footer-->
            <div class="modal-footer flex-center">
                <form action="{{route('huertos.destroy',$huerto->id)}}" method="POST" >
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



