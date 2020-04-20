<?php
include '../library/configServer.php';
include '../library/consulSQL.php';

sleep(5);

if($_POST['ruta']){
    $codeHorario=$_POST['id'];
    $cooperativa=$_POST['cooperativa'];
    $hora=$_POST['hora'];
    $ruta=$_POST['ruta'];

    //ya existe la ruta en la bd?
    $sqlGetRuta = "SELECT id FROM ruta where (ruta.id_lugar = ".$ruta[0]." and ruta.posicion = 1)
                        OR (ruta.id_lugar = ".$ruta[1]." and ruta.posicion = 2)";
    for ($i=2; $i < count($ruta); $i++) { 
        $sqlGetRuta .= "OR (ruta.id_lugar = ".$ruta[$i]." and ruta.posicion =".($i+1).")";
    }
    $sqlGetRuta .= "GROUP BY id HAVING count(*) = " . count($ruta);
    $resultGetRuta = mysqli_query($conn, $sqlGetRuta) or die("database error:". mysqli_error($conn));
    if(mysqli_num_rows($resultGetRuta)){
        //existe la ruta en la base de datos
        $idRuta = mysqli_fetch_assoc($resultGetRuta)['id'];
        actualizarHorario($codeHorario, $cooperativa, $hora, $idRuta);
    } else {
        //no existe la ruta en la bd, hay que hacerla
        $nuevaRutaId = (mysqli_fetch_assoc(mysqli_query($conn, "SELECT max(id) from ruta"))['max(id)'] + 1);
        $rutaStr = "$nuevaRutaId,". $ruta[0] . ", 1)," . "($nuevaRutaId,". $ruta[1] . ", 2";
        for ($i=2; $i < count($ruta); $i++) { 
            $rutaStr .= ") , ($nuevaRutaId,".$ruta[$i].",".($i+1); 
        }
        if(consultasSQL::InsertSQL("ruta", "id, id_lugar, posicion", $rutaStr)){
            //hacer update normal
            actualizarHorario($codeHorario, $cooperativa, $hora, $nuevaRutaId);
        } else {
            devolverError();
        }
    }
}

function actualizarHorario($id, $coop, $hora, $rutaId){
    if(consultasSQL::UpdateSQL("horario", "cooperativa='$coop',hora='$hora',id_ruta='$rutaId'", "id='$id'")){
        echo '
        <br>
        <img class="center-all-contens" src="assets/img/Check.png">
        <p><strong>Hecho</strong></p>
        <p class="text-center">
            Recargando<br>
            en 7 segundos
        </p>
        <script>
            setTimeout(function(){
            url ="configAdmin.php";
            $(location).attr("href",url);
            },7000);
        </script>
     ';
    }else{
       devolverError(); 
    }
}

function devolverError(){
    echo '
        <br>
        <img class="center-all-contens" src="assets/img/cancel.png">
        <p><strong>Error</strong></p>
        <p class="text-center">
            Recargando<br>
            en 7 segundos
        </p>
        <script>
            setTimeout(function(){
            url ="configAdmin.php";
            $(location).attr("href",url);
            },7000);
        </script>
     ';
}

