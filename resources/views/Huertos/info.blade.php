

<!-- Modal: modalQuickView -->
<div class="modal fade" id="modal_info_huerto-{{ $huerto->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                            <strong>Informacion del huerto "{{$huerto->name_orchard}}"</strong>
                        </h2>


                        <!--Accordion wrapper-->
                        <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

                            <!-- Accordion card -->
                                <div class="card">

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

                                                <div class="md-form form-group ">
                                                    <label for="inputEmail4">Nombre del  huerto</label>
                                                    <input type="text" id="name_orchard" name="name_orchard" class="form-control" placeholder="Nombre del huerto"  value="{{$huerto->name_orchard}}" disabled  required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="md-form form-group ">
                                                    <label for="location_orchard">Nombre de la localidad</label>
                                                    <input type="text" id="location_orchard" name="location_orchard" class="form-control" value="{{$huerto->location_orchard}}" disabled required>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-6">
                                                    <div class=" form-group">
                                                        <div class="md-form form-group ">
                                                            <label for="latitude">Latitud geografica</label>
                                                            <input type="number"  step="0.000001" id="latitude" name="latitude" class="form-control" value="{{$huerto->latitude}}" disabled required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">

                                                    <div class=" form-group">
                                                        <div class="md-form form-group ">
                                                            <label for="length">Longitud geografica</label>
                                                            <input type="number"  step="0.000001" id="length" name="length" class="form-control"  value="{{$huerto->length}}"  disabled required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-6">
                                                    <div class=" form-group">
                                                        <div class="md-form form-group ">
                                                            <label for="formGroupExampleInputMD">Altura del nivel del mar </label>
                                                            <input  type="text" class="form-control" id="formGroupExampleInputMD" placeholder="{{$huerto->altitude}} metros" disabled >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <div class="md-form form-group ">
                                                            <label for="formGroupExampleInputMD">Tipo de aguacates</label>
                                                            <input type="text" class="form-control" id="formGroupExampleInputMD" placeholder="{{$huerto->getTypesAbocadoM[0]->type_avocado}}" disabled>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- Accordion card -->

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
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <div class="md-form form-group ">
                                                            <label for="formGroupExampleInputMD">Tipo de topografia</label>
                                                            <input type="text" id="formGroupExampleInputMD" name="name_orchard" class="form-control"  value="{{$huerto->getTypesTopographicM[0]->type_topography}}" disabled  >
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <div class="md-form form-group">
                                                            <label for="formGroupExampleInputMD">Tipo de suelo</label>
                                                            <input type="text" id="formGroupExampleInputMD" name="name_orchard" class="form-control"  value="{{$huerto->getTypesSoilM[0]->type_soil}}" disabled  >
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class=" form-group">
                                                <div class="md-form form-group">
                                                    <label for="formGroupExampleInputMD">Superficie (metros cuadrados)</label>
                                                    <input type="number" id="formGroupExampleInputMD" name="surface" class="form-control" value="{{$huerto->surface}}" disabled >
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
                                           aria-expanded="false" aria-controls="collapseThree3_{{$huerto->id}}">
                                            <h5 class="mb-0 teal-text"><i class="fas fa-cloud-sun"></i>  Clima<i class="fas fa-angle-down rotate-icon"></i>
                                            </h5>
                                        </a>
                                    </div>

                                    <!-- Card body -->
                                    <div id="collapseThree3_{{$huerto->id}}" class="collapse" role="tabpanel" aria-labelledby="headingThree3_{{$huerto->id}}"
                                         data-parent="#accordionEx">
                                        <div class="card-body">
                                            <div class=" form-group">
                                                <div class="md-form form-group">
                                                    <label for="formGroupExampleInputMD">Tipo de clima</label>
                                                    <input type="text" id="formGroupExampleInputMD" name="type_climate_id" class="form-control" value="{{$huerto->getTypesClimateM[0]->type_climate}}" disabled >
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- Accordion card -->

                                <div class="text-center py-3">
                                    <button type="button" class="btn btn-dark-green btn-rounded" data-dismiss="modal">Cerrar</button>
                                </div>

                        </div>
                        <!-- Accordion wrapper -->
                        <!-- /.Add to Cart -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

