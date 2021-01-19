@extends('Layouts.layout')
@section("title","Huertos")

@section('content')



    <div>

        <div class="row justify-content-md-center">
            <h2><br>Huertos</h2>
        </div>

        <div class="row justify-content-md-center" >
            <div class="col-11">
                <div class="card-deck">


                    <div class="p-3 ">
                        <div class="card  mb-5 bg-white rounded" style="width: 18rem; ">
                            <img src="https://www.lajornadadeoriente.com.mx/wp-content/uploads/2020/02/190408Aguacate3.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Registra un nuevo huerto</h5>

                                <div class="row">


                                    <a  id="cargando_rg" class="btn btn-dark-green btn-rounded" href="{{url("huertos/create")}}" >

                                        <div id="spiner_icon" class="spinner-border spinner-border-sm hide" role="status">
                                            <span class="sr-only">Loading...</span>
                                        </div>
                                        Registrar
                                    </a>

                                </div>

                            </div>
                        </div>
                    </div>
                    @foreach($arrayHuertos as $huerto)
                    <div class="p-3 ">
                        <div class="card shadow mb-5 bg-white rounded" style="width: 18rem; ">
                            <img src="{{Storage::url($huerto->image)}}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">{{$huerto->name_orchard}}</h5>
                                <p class="card-text">{{$huerto->location_orchard}}</p>

                                <div class="row">

                                    <a href="#!" class="btn btn-rounded btn-info btn-sm mr-1 px-3" data-toggle="modal" data-target="#modal_info_huerto-{{ $huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom" title="Ver informacion completa "><i class="fas fa-info"></i> </a>

                                    <a type="button" class="btn btn-rounded btn-primary btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_edit_huerto-{{ $huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom" title="Modificar huerto"><i class="fas fa-edit"></i> </a>

                                    <a type="button" class="btn btn-rounded btn-danger btn-sm mr-1  px-3"  data-toggle="modal" data-target="#modal_delete_huerto-{{ $huerto->id }}" data-toggle_2="tooltip"  data-placement="bottom" title="Eliminar huerto"><i class="fas fa-trash"></i> </a>

                                    <a type="button" class="btn  btn-rounded light-green btn-sm mr-1  px-3" data-toggle="modal" data-target="#modalPoll-1_{{$huerto->id}}" data-toggle_2="tooltip"  data-placement="bottom" title="Tareas del huerto"><i class="fas fa-list-ul text-white"></i></a>

                                </div>

                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>

        </div>


    </div>
    <br><br><br><br><br><br><br>
    @foreach($arrayHuertos as $huerto)
        @include("Huertos.edit")
    @endforeach
    @foreach($arrayHuertos as $huerto)
        @include("Huertos.delete")
    @endforeach
    @foreach($arrayHuertos as $huerto)
        @include("Huertos.info")
    @endforeach

    @foreach($arrayHuertos as $huerto)
        @include("Tareas_huerto.index")
    @endforeach

    @foreach($arrayTareasHuerto as $tareas_huerto)
        @include("Tareas_huerto.delete")
    @endforeach

    @foreach($arrayJornadasHuerto as $jornada_huerto)
        @include("Jornadas.delete")
    @endforeach

@endsection

@section('scripts')
<script type="text/javascript">
    $(".collapse_tarea").click(function () {
        $(".content_tareas").collapse("hide");
    })

    $(".collapse_jornada").click(function () {
        $(".content_jornadas").collapse("hide");
    })

    $(function () {
        $('[data-toggle_2="tooltip"]').tooltip()
    })

    $("#cargando_rg").on("click",function () {
        $("#spiner_icon").removeClass("hide");
        $("#cargando_rg").addClass("disable");
    })

    $("#actualiza_h").on("click",function () {
        $("#spiner_actualiza_h").removeClass("hide");
        $("#actualiza_h").addClass("disable");
    })

    $("#actu_th").on("click",function () {
        $("#spiner_actu_th").removeClass("hide");
        $("#actu_th").addClass("disable");
    })


    $('.datepicker').datepicker();



    function foo(){
        var checkbox = document.getElementById("check_Fertilizacion");
        if(checkbox.checked){
            $("#cost_fertilization").attr("disabled", false);
        }
        else {
            $("#cost_fertilization").attr("disabled", true);
        }
    }

    function fcp(){
        var checkbox = document.getElementById("check_Poda");
        if(checkbox.checked){
            $("#cost_pruning").attr("disabled", false);
        }
        else {
            $("#cost_pruning").attr("disabled", true);
        }
    }

    function fcr(){
        var checkbox = document.getElementById("check_Riego");
        if(checkbox.checked){
            $("#cost_irrigation").attr("disabled", false);
        }
        else {
            $("#cost_irrigation").attr("disabled", true);
        }
    }

    function fcm(){
        var checkbox = document.getElementById("check_maleza");
        if(checkbox.checked){
            $("#cost_undergrowth_control").attr("disabled", false);
        }
        else {
            $("#cost_undergrowth_control").attr("disabled", true);
        }
    }

    function fcpl(){
        var checkbox = document.getElementById("check_plaga");
        if(checkbox.checked){
            $("#cost_plague_control").attr("disabled", false);
        }
        else {
            $("#cost_plague_control").attr("disabled", true);
        }
    }

    function fcc(){
        var checkbox = document.getElementById("check_Cosecha");
        if(checkbox.checked){
            $("#cost_harvest").attr("disabled", false);
        }
        else {
            $("#cost_harvest").attr("disabled", true);
        }
    }

</script>

@endsection


