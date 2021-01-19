@extends('Layouts.layout')
@section("title","Agregar huerto")

@section('content')

    <div>


        <div class="row justify-content-md-center">
            <div class="col">
                <a class="btn btn-outline-success" href="/huertos"><i class="fa fa-backspace"></i> Regresar</a>
            </div>
        </div>

        <div class="row justify-content-md-center">
            <h2><br>Registrar un nuevo huerto</h2>
        </div>
        <br>


        <div class="row justify-content-md-center">
            <div class="col-10 ">
                <form action="{{url("huertos")}}" method="post"  enctype="multipart/form-data">
                    @csrf
                    <div class="row border-bottom border-top">
                        <div class=" col-3 border-right ">
                            <div class="row pt-4 py-2 " style="height:100%;">
                                <div class="col-3 justify-content-center align-self-center text-right" ><span ><i class="fas fa-map-marker-alt fa-3x"></i></span>  </div>
                                <div class="col-9  justify-content-center align-self-center text-center"><h6 class="text-muted">Ubicacion</h6></div>
                            </div>


                        </div>
                        <div class="col-9">

                            <div class="md-form form-group">
                                <div class="col-9 ">
                                    <input type="text" id="name_orchard" name="name_orchard" class="form-control "  required>
                                    <label for="name_orchard">Nombre del huerto</label>
                                </div>
                            </div>

                            <div class=" form-group">
                                <div class="col-9 ">
                                    <label for="image">Imagen del huerto</label>
                                    <input type="file" id="image" name="image" class="form-control"  required>

                                </div>
                            </div>

                            <div class="md-form form-group">
                                <div class="col-9">
                                    <input type="text" id="location_orchard" name="location_orchard" class="form-control"  required>
                                    <label for="location_orchard">Nombre de la localidad</label>
                                </div>
                            </div>

                            <div class="md-form form-group">
                                <div class="col-5">
                                    <input type="number"  step="0.000001" id="latitude" name="latitude" class="form-control"  required>
                                    <label for="latitude">Latitud geografica</label>
                                </div>
                            </div>

                            <div class="md-form form-group">
                                <div class="col-5">
                                    <input type="number"  step="0.000001" id="length" name="length" class="form-control"  required>
                                    <label for="length">Longitud geografica</label>
                                </div>
                            </div>

                            <div class="md-form form-group">
                                <div class="col-5">
                                    <input type="number" id="altitude" name="altitude" class="form-control"   required>
                                    <label for="altitude">Altura del nivel del mar (metros)</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-5">
                                    <label for="type_avocado_id">Tipo de aguacates</label>
                                    <select class="mdb-select md-form colorful-select dropdown-ins" name="type_avocado_id" id="type_avocado_id" required>
                                        <option value="">Selecciona uno</option>
                                        @foreach($arrayTipoAguacates as $tipoaguacate)
                                            <option value="{{$tipoaguacate->id}}" >{{$tipoaguacate->type_avocado}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row border-bottom border-top">
                        <div class=" col-3 border-right ">
                            <div class="row pt-4 py-2 " style="height:100%;">
                                <div class="col-3 justify-content-center align-self-center text-right" ><span ><i class="fas fa-layer-group fa-3x"></i></span>  </div>
                                <div class="col-9  justify-content-center align-self-center text-center"><h6 class="text-muted">Suelo</h6></div>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="form-group pt-2">
                                <div class="col-5">
                                    <label for="type_topography_id">Tipo de topografia</label>
                                    <select class="mdb-select md-form colorful-select dropdown-ins" name="type_topography_id" id="type_topography_id" required>
                                        <option value="">Selecciona uno</option>
                                        @foreach($arrayTipoTopografias as $tipotopografia)
                                            <option value="{{$tipotopografia->id}}" >{{$tipotopografia->type_topography}}</option>
                                        @endforeach
                                    </select>
                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-5">
                                    <label for="type_soil_id">Tipo de suelo</label>
                                    <select class="mdb-select md-form colorful-select dropdown-ins" name="type_soil_id" id="type_soil_id" required>
                                        <option value="">Selecciona uno</option>
                                        @foreach($arrayTipoSuelos as $tiposuelo)
                                            <option value="{{$tiposuelo->id}}" >{{$tiposuelo->type_soil}}</option>
                                        @endforeach
                                    </select>
                                </div>

                            </div>

                            <div class="md-form form-group">
                                <div class="col-5">
                                    <input type="number" id="surface" name="surface" class="form-control"  required>
                                    <label for="surface">Superficie (metros cuadrados)</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row border-bottom border-top">
                        <div class=" col-3 border-right ">
                            <div class="row pt-4 py-2 " style="height:100%;">
                                <div class="col-3 justify-content-center align-self-center text-right" ><span ><i class="fas fa-cloud-sun fa-3x"></i></span>  </div>
                                <div class="col-9  justify-content-center align-self-center text-center"><h6 class="text-muted">Clima</h6></div>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="row pt-1 ">
                                <div class="col-12">
                                    <div class="form-group">
                                        <div class="col-5">
                                            <label for="type_climate_id">Tipo de clima</label>
                                            <select class="mdb-select md-form colorful-select dropdown-ins" name="type_climate_id" id="type_climate_id" required>
                                                <option value="">Selecciona uno</option>
                                                @foreach($arrayTipoClimas as $tipoclima)
                                                    <option value="{{$tipoclima->id}}" >{{$tipoclima->type_climate}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}">

                    <div class="row text-center pt-2">
                        <div class="col align-self-center">
                            <button type="submit" class="btn btn-dark-green">Registrar</button>
                        </div>
                    </div>
                </form>

            </div>

        </div>
    </div>


@endsection
