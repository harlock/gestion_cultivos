

    <!-- Modal: modalQuickView -->
    <div class="modal fade" id="modal_edit_huerto-{{ $huerto->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel_{{ $huerto->id }}" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-5">
                            <!--Carousel Wrapper-->
                            <img src="{{Storage::url($huerto->image)}}" class="card-img-top" alt="...">
                            <!--/.Carousel Wrapper-->
                        </div>
                        <div class="col-lg-7">
                            <h2 class="h3-responsive product-name">
                                <strong>Editar huerto "{{$huerto->name_orchard}}"</strong>
                            </h2>


                            <!--Accordion wrapper-->
                            <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">
                                <form action="{{route("huertos.update",$huerto->id)}}" method="post"  enctype="multipart/form-data">
                                @csrf
                                @method("PUT")
                                    <!-- Accordion card -->
                                    <div class="card" >

                                        <!-- Card header -->
                                        <div class="card-header " role="tab" id="headingOne1_{{$huerto->id}}">
                                            <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1_{{$huerto->id}}" aria-expanded="false"
                                               aria-controls="collapseOne1_{{$huerto->id}}">
                                                <h5 class="mb-0  teal-text">
                                                    <i class="fas fa-map-marker-alt fa-1x"></i> Ubicacion <i class="fas fa-angle-down rotate-icon"></i>
                                                </h5>
                                            </a>
                                        </div>

                                        <!-- Card body -->
                                        <div id="collapseOne1_{{$huerto->id}}" class="collapse" role="tabpanel" aria-labelledby="headingOne1_{{$huerto->id}}"
                                             data-parent="#accordionEx">
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <div class="md-form form-group">
                                                        <label for="name_orchard">Nombre del  huerto</label>
                                                        <input type="text" id="name_orchard" name="name_orchard" class="form-control" placeholder="Nombre del huerto"  value="{{$huerto->name_orchard}}"  required>
                                                    </div>
                                                </div>

                                                <div class=" form-group">
                                                    <div class="">
                                                        <label for="image">Imagen del huerto</label>
                                                        <input type="file" id="image" name="image" class="form-control"  >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="md-form form-group">
                                                        <label for="location_orchard">Nombre de la localidad</label>
                                                        <input type="text" id="location_orchard" name="location_orchard" class="form-control" laceholder="" value="{{$huerto->location_orchard}}"  required>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class=" form-group">
                                                            <div class="md-form form-group">
                                                                <label for="latitude">Latitud geografica</label>
                                                                <input type="number"  step="0.000001" id="latitude" name="latitude" class="form-control" laceholder="" value="{{$huerto->latitude}}" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class=" form-group">
                                                            <div class="md-form form-group">
                                                                <label for="length">Longitud geografica</label>
                                                                <input type="number"  step="0.000001" id="length" name="length" class="form-control" laceholder=""  value="{{$huerto->length}}" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class=" form-group">
                                                            <div class="md-form form-group">
                                                                <label for="altitude">Altura nivel del mar (m)</label>
                                                                <input type="number" id="altitude" name="altitude" class="form-control" laceholder=""  value="{{$huerto->altitude}}"  required>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <div class="col-md-12 select-outline">
                                                                    <select class="mdb-select md-form colorful-select dropdown-ins" name="type_avocado_id" id="type_avocado_id_{{$huerto->id}}" required>
                                                                        <option value="">Selecciona uno</option>
                                                                        @foreach($arrayTipoAguacates as $tipoaguacate)
                                                                            <option value="{{$tipoaguacate->id}}"  {{$tipoaguacate->id==$huerto->type_avocado_id?"selected":""}}>{{$tipoaguacate->type_avocado}}</option>
                                                                        @endforeach
                                                                    </select>
                                                                    <label for="type_avocado_id_{{$huerto->id}}" class="mdb-main-label">Tipo de aguacates</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div>


                                    <!-- Accordion card -->
                                    <div class="card">

                                        <!-- Card header -->
                                        <div class="card-header" role="tab" id="headingTwo2_{{$huerto->id}}">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2_{{$huerto->id}}"
                                               aria-expanded="false" aria-controls="collapseTwo2_{{$huerto->id}}">
                                                <h5 class="mb-0 teal-text"><i class="fas fa-layer-group"></i> Suelo<i class="fas fa-angle-down rotate-icon"></i>
                                                </h5>
                                            </a>
                                        </div>

                                        <!-- Card body -->
                                        <div id="collapseTwo2_{{$huerto->id}}" class="collapse" role="tabpanel" aria-labelledby="headingTwo2_{{$huerto->id}}"
                                             data-parent="#accordionEx">
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <div class="">
                                                        <label for="type_topography_id_{{$huerto->id}}">Tipo de topografia</label>
                                                        <select class="mdb-select md-form colorful-select dropdown-ins" name="type_topography_id" id="type_topography_id_{{$huerto->id}}" required>
                                                            <option value="">Selecciona uno</option>
                                                            @foreach($arrayTipoTopografias as $tipotopografia)
                                                                <option value="{{$tipotopografia->id}}" {{$tipotopografia->id==$huerto->type_topography_id?"selected":""}}  >
                                                                    {{$tipotopografia->type_topography}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                </div>

                                                <div class="form-group">
                                                    <div class="">
                                                        <label for="type_soil_id_{{$huerto->id}}">Tipo de suelo</label>
                                                        <select class="mdb-select md-form colorful-select dropdown-ins" name="type_soil_id" id="type_soil_id_{{$huerto->id}}" required>
                                                            <option value="">Selecciona uno</option>
                                                            @foreach($arrayTipoSuelos as $tiposuelo)
                                                                <option value="{{$tiposuelo->id}}" {{$tiposuelo->id==$huerto->type_soil_id?"selected":""}}>{{$tiposuelo->type_soil}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                </div>

                                                <div class=" form-group">
                                                    <div class="md-form form-group">
                                                        <label for="surface">Superficie (metros cuadrados)</label>
                                                        <input type="number" id="surface" name="surface" class="form-control" placeholder="" value="{{$huerto->surface}}" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Accordion card -->

                                    <div class="card">

                                        <!-- Card header -->
                                        <div class="card-header" role="tab" id="headingThree3_{{$huerto->id}}">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3_{{$huerto->id}}"
                                               aria-expanded="false" aria-controls="collapseThree3">
                                                <h5 class="mb-0 teal-text"><i class="fas fa-cloud-sun"></i>  Clima<i class="fas fa-angle-down rotate-icon"></i>
                                                </h5>
                                            </a>
                                        </div>

                                        <!-- Card body -->
                                        <div id="collapseThree3_{{$huerto->id}}" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                             data-parent="#accordionEx">
                                            <div class="card-body">
                                                <div class="">
                                                    <label for="type_climate_id_{{$huerto->id}}">Tipo de clima</label>
                                                    <select class="mdb-select md-form colorful-select dropdown-ins" name="type_climate_id" id="type_climate_id_{{$huerto->id}}" required>
                                                        <option value="">Selecciona uno</option>
                                                        @foreach($arrayTipoClimas as $tipoclima)
                                                            <option value="{{$tipoclima->id}}" {{$tipoclima->id==$huerto->type_climate_id?"selected":""}}>{{$tipoclima->type_climate}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Accordion card -->

                                    <div class="text-center py-3">

                                        <button type="button" class="btn btn-light btn-rounded" data-dismiss="modal">Cerrar</button>
                                        <button  id="actualiza_h" class="btn btn-dark-green btn-rounded ">
                                            <div id="spiner_actualiza_h" class="spinner-border spinner-border-sm hide" role="status">
                                                <span class="sr-only">Loading...</span>
                                            </div>
                                            Actualizar
                                        </button>

                                    </div>
                                </form>
                            </div>
                            <!-- Accordion wrapper -->
                            <!-- /.Add to Cart -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

