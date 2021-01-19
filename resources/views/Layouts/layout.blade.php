<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('title')</title>
    <!-- Font Awesome -->
    <script src="{{ asset('js/app.js') }}"></script>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/mdb.min.css') }}" />



    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/mdb.min.js') }}"></script>

    <script>
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        });
    </script>

    <style>
        .hide{
            display: none;
        }
        #navbarDropdown{
            transition: opacity 3s 3s;
        }
        #navbarDropdown {
            display: block;
        }
    </style>

</head>
<body>

    <!-- Start your project here-->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark " role="navigation" style=" background: #007b5e">

            <a class="navbar-brand text-white table-responsive-xl" href="#">
                <img src="{{url('/img/aguacate_icono.svg')}}" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                APLICACION WEB COMO APOYO EN LA GESTION DEL CULTIVO DEL AGUACATE HASS
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    @guest
                        <li class="nav-item">
                            <a class="nav-link"  href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Registrarse') }}</a>
                            </li>
                        @endif
                    @else
                        @if ( Auth::user()->type_user_id==2 )

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Catalogos</a>
                                <div class="dropdown-menu dropdown-success" >
                                    <a class="dropdown-item" href="{{url("tipos_agucate")}}"><strong>Tipos de aguacate</strong></a>
                                    <a class="dropdown-item" href="{{url("tipos_topografia")}}"><strong>Tipos de topografia</strong></a>
                                    <a class="dropdown-item" href="{{url("tipos_suelo")}}"><strong>Tipos de suelo</strong></a>
                                    <a class="dropdown-item" href="{{url("tipos_clima")}}"><strong>Tipos de clima</strong></a>
                                    <a class="dropdown-item" href="{{url("tipos_tarea")}}"><strong>Tipos de tareas de huerto</strong></a>
                                </div>
                            </li>



                            <li class="nav-item ">
                                <a class="nav-link" href="{{url('huertos')}}" ><i class="fas fa-seedling"></i> Huertos</a>
                            </li>

                            <!--<li class="nav-item">
                                <a class="nav-link" href=""><i class="fas fa-flask"></i> Plan de fertilizacion</a>
                            </li>-->

                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <i class="fas fa-user"></i>  {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu  dropdown-menu-right" aria-labelledby="navbarDropdown">

                                    <a  class="dropdown-item " href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <i class="fas fa-door-open"></i> {{ __('Salir') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endif

                        @if ( Auth::user()->type_user_id==1 )
                            <li class="nav-item ">
                                <a class="nav-link" href="{{url('huertos')}}" ><i class="fas fa-seedling"></i> Huertos</a>
                            </li>

                            <!--<li class="nav-item">
                                <a class="nav-link" href=""><i class="fas fa-flask"></i> Plan de fertilizacion</a>
                            </li>-->

                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <i class="fas fa-user"></i>  {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu  dropdown-menu-right" aria-labelledby="navbarDropdown">

                                    <a  class="dropdown-item " href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <i class="fas fa-door-open"></i> {{ __('Salir') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endif


                    @endguest

                </ul>

            </div>
        </nav>
    </header>

    <main class="py-4">
        @yield('content')
    </main>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Plugin file -->
    <script src="./js/addons-pro/multi-range.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.mdb-select').materialSelect();
        });

        // Data Picker Initialization
        $('.datepicker').datepicker();



    </script>
@yield('scripts')
</body>
</html>
