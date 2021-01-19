
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>PDF</title>
    <style>
        @font-face {
            font-family: SourceSansPro;
            src: url(SourceSansPro-Regular.ttf);
        }

        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }

        a {
            color: #0087C3;
            text-decoration: none;
        }

        body {
            position: relative;
            width: 16.3cm;
            height: 31cm;
            margin: 0 auto;
            color: #555555;
            background: #FFFFFF;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-family: SourceSansPro;
        }

        header {
            padding: 10px 0;
            margin-bottom: 20px;
            margin-right: 20px;
            border-bottom: 1px solid #AAAAAA;
        }

        #logo {
            float: left;
            margin-top: 8px;
        }

        #logo img {
            height: 70px;
        }

        #company {
            float: right;
            text-align: right;
        }


        #details {
            margin-bottom: 10px;
        }

        #client {
            padding-left: 6px;
            border-left: 6px solid #0087C3;
            float: left;

        }

        #client .to {
            color: #777777;
        }

        h2.name {
            font-size: 1.4em;
            font-weight: normal;
            margin: 0;
        }

        #invoice {
            float: left;
            text-align: left;
        }

        #invoice h1 {
            color: #0087C3;
            font-size: 2.4em;
            line-height: 1em;
            font-weight: normal;
            margin: 0  0 10px 0;
        }

        #invoice .date {
            font-size: 1.1em;
            color: #777777;
        }

        table {
            width: 50%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px;
            position: relative;
            left: 0px;

        }

        table th,
        table td {
            padding: 7px;
            background: #EEEEEE;
            text-align: center;
            border-bottom: 1px solid dimgrey;
        }

        table th {
            white-space: nowrap;
            font-weight: normal;
            text-align: center;
        }

        table td {
            text-align: right;
        }

        table td h3{
            color: #57B223;
            font-size: 1.2em;
            font-weight: normal;
            margin: 0 0 0.2em 0;
        }

        table .no {
            color: black;
            font-size: 1.6em;
            background: #57B223;
        }

        table .desc {
            text-align: left;

        }

        table .unit {
            background: #DDDDDD;
        }

        table .qty {
        }

        table .total {
            background: #57B223;
            color: #FFFFFF;
        }

        table td.unit,
        table td.qty,
        table td.total {
            font-size: 1em;
        }

        table tbody tr:last-child td {
            border: none;
        }

        table tfoot td {
            padding: 10px 20px;
            background: black;

            font-size: 1.2em;
            white-space: nowrap;
            border-top: 1px solid #AAAAAA;
        }

        table tfoot tr:first-child td {
            border-top: none;
        }

        table tfoot tr:last-child td {
            color: #57B223;
            font-size: 1.4em;
            border-top: 1px solid #57B223;

        }

        table tfoot tr td:first-child {
            border: none;
        }

        #thanks{
            font-size: 2em;
            margin-bottom: 50px;
        }

        #notices{
            padding-left: 6px;
            border-left: 6px solid #0087C3;
        }

        #notices .notice {
            font-size: 1em;
        }

        footer {
            color: #777777;
            width: 100%;
            height: 30px;
            position: absolute;
            bottom: 0;

            padding: 8px 0;
            text-align: center;
        }

        table td
        {
            text-align: center;
            vertical-align: middle;
        }
    </style>
    <script class="text/javascript">
        $(document).ready(function() {
            var cosa=23232332;
            function suma (cosa){
                var sum = cosa;
                document.getElementById("content").innerHTML = sum;
                alert(sum);
                console.alert(sum);
            }
            suma(1234567890);
        });


    </script>
</head>
<body>
<header class="clearfix">

        <div id="logo">
            <img src="https://images.emojiterra.com/google/android-nougat/512px/1f951.png">
        </div>
        <div id="company">
            @foreach($arrayHuertos as $huerta)
            <h2 class="name">Reporte de tareas del huerto "{{$huerta->name_orchard}}"</h2>
            @endforeach
            <div>APLICACION WEB COMO APOYO EN GESTION DEL CULTIVO DEL AGUACATE HASS</div>
            @php
                $dia=date("j");
                $mes=date("m");
                $año=date("Y");
                $fecha="$dia/$mes/$año";

            @endphp
            <div>{{$fecha}}</div>
            <div><a href="mailto:company@example.com">isc_palma.a@tesvb.edu.mx</a></div>
        </div>

</header>
<main>
    <div id="details" class="clearfix">
        <div id="client">
            @foreach($arrayHuertos as $huerta)
            <p><font size="3">La siguiente tabla corresponde a las tareas de cuidado registradas del huerto "{{$huerta->name_orchard}}", mostrando el estado de cada una y sus precios. </font></p>
            @endforeach
        </div>
    </div>
    <div id="invoice">
        @foreach($arrayHuertos as $huerta)
        <h2>Tareas de cuidado del huerto "{{$huerta->name_orchard}}"</h2>
        @endforeach
    </div>
    <br><br><br><br>

    <table border="0" cellspacing="0" cellpadding="0" class="text-center">

            <thead>
            <tr>
                <th class="qty" style="width:70px">Tarea</th>
                <th class="unit" style="width:70px">Estado</th>
                <th class="qty" style="width:70px">Costo</th>
                <th class="unit" style="width:70px">Gatos generales</th>
                <th class="qty" style="width:70px">Fecha</th>
            </tr>
            </thead>
            <tbody>
            @foreach($arrayTareasHuerto as $tareas_huerto)

                <tr >
                    <td style="width:70px">{{$tareas_huerto->getTypeJobM[0]->job_type}}</td>
                    <td class="text-center unit" class="unit">
                        @if ($tareas_huerto->state==1)
                            Pendiente
                        @else
                            Terminada
                        @endif
                    </td>
                    <td class="text-center " class="unit">$ {{$tareas_huerto->cost}}</td>
                    <td class="text-center unit">$ {{$tareas_huerto->general_expenses}}</td>
                    <td class=" text-center">{{date('d/m/Y', strtotime($tareas_huerto->date_work))}}</td>
                </tr>
            @endforeach
                <tr >
                    <td  colspan=2 style="width:70px">Subtotales Pendientes:</td>
                    <td class="text-center" class="unit">$ {{$suma_costos_p}}</td>
                    <td class="text-center">$ {{$suma_gg_p}}</td>
                </tr>
                <tr >
                    <td  colspan=2 style="width:70px">Subtotales Terminados:</td>
                    <td class="text-center" class="unit">$ {{$suma_costos_t}}</td>
                    <td class="text-center">$ {{$suma_gg_t}}</td>
                </tr>
                <tr >
                    <td  colspan=2 style="width:70px">TOTAL:</td>
                    <td class="text-center" class="unit">$ {{$suma_costos_p+$suma_costos_t}}</td>
                    <td class="text-center">$ {{$suma_gg_p+$suma_gg_t}}</td>
                </tr>
            </tbody>

            <tfoot>

            </tfoot>
    </table>
    <div ></div>
    <div id="details" class="clearfix">
        <div id="client">
            @foreach($arrayHuertos as $huerta)
            <p><font size="3">La siguiente tabla corresponde a las jornadas tareas de cuidado registradas del huerto "{{$huerta->name_orchard}}", mostrando un "Sí" y su costo si la tarea aplica en la jornada. </font></p>
            @endforeach
        </div>
    </div>
    <div id="invoice">
        @foreach($arrayHuertos as $huerta)
        <h2>Jornadas de tareas de cuidado del huerto "{{$huerta->name_orchard}}"</h2>
        @endforeach
    </div>
    <br><br><br><br>

    <table border="0" cellspacing="0" cellpadding="0">

        <thead>
        <tr>
            <th class="qty">Fecha</th>
            <th class="unit" style="width:60px">Gatos <br>generales</th>
            <th class="qty" style="width:60px">Poda</th>
            <th class="unit" style="width:60px">Riego</th>
            <th class="qty">Control de  <br>Maleza</th>
            <th class="unit">Control de <br> Plagas</th>
            <th class="qty">Fertilizacion</th>
            <th class="unit" style="width:60px">Cosecha</th>
        </tr>
        </thead>
        <tbody>
        @foreach($arrayJornadasHuerto as $jornada_huerto)
            <tr>
                <td class="qty">{{date('d/m/Y', strtotime($jornada_huerto->date_work))}}</td>
                <td class="unit">
                    $ {{$jornada_huerto->general_expenses}}
                </td>
                <td class="qty">
                    @if ($jornada_huerto->pruning==1)
                        <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_pruning}}
                    @else
                        No
                    @endif
                </td>
                <td class="unit">
                    @if ($jornada_huerto->irrigation==1)
                        <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_irrigation}}
                    @else
                        No
                    @endif
                </td>
                <td class="qty">
                    @if ($jornada_huerto->undergrowth_control==1)
                        <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_undergrowth_control}}
                    @else
                        No
                    @endif
                </td>
                <td class="unit">
                    @if ($jornada_huerto->plague_control==1)
                        <strong>Sí</strong> <br> $ {{$jornada_huerto->cost_plague_control}}
                    @else
                        No
                    @endif
                </td>
                <td class="qty">
                    @if ($jornada_huerto->fertilization==1)
                        <strong>Sí</strong> <br>$ {{$jornada_huerto->cost_fertilization}}
                    @else
                        No
                    @endif
                </td>
                <td class="unit">
                    @if ($jornada_huerto->harvest==1)
                        <strong>Sí</strong> <br>$ {{$jornada_huerto->cost_harvest}}
                    @else
                        No
                    @endif
                </td>

            </tr>
        @endforeach
        </tbody>
        <tfoot>

        </tfoot>
    </table>
<!--
    <div id="notices">
        <div>VEREDICTO:</div>
        <div class="notice">Se te recomienda que en tu siguiente mescla de fertilización utilices 400 gm de Azufre, 300 mg de nitrógeno, 400 gm de fosforo, 600 gm de potasio, 200 gm calcio, 500 gm de magnesio, 350 gm hierro, 500 gm de cobre, 100 gm de magnesio, 200 gm de zinc, 300 ml de boro.</div>
    </div> -->
</main>
<footer>
    Queda bajo responsabilidad del usuario el uso inadecuado o nulo del plan recomendado.
</footer>

</body>
</html>
