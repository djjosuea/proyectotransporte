<?php
session_start();
include '../library/configServer.php';
include '../library/consulSQL.php';

sleep(2);

if($_POST['ruta']){
    $lugares = $_POST['ruta'];
    $cooperativa = $_POST['cooperativa'];
    $horario = $_POST['horario'];
    //obtener id de la ruta o crear ruta si no existe
    $sqlGetRuta = "SELECT id FROM ruta where (ruta.id_lugar = ".$lugares[0]." and ruta.posicion = 1)
                        OR (ruta.id_lugar = ".$lugares[1]." and ruta.posicion = 2)";
    for ($i=2; $i < count($lugares); $i++) { 
        $sqlGetRuta .= "OR (ruta.id_lugar = ".$lugares[$i]." and ruta.posicion =".($i+1).")";
    }
    $sqlGetRuta .= "GROUP BY id HAVING count(*) = " . count($lugares);
    $resultGetRuta = mysqli_query($conn, $sqlGetRuta) or die("database error:". mysqli_error($conn));
    if(mysqli_num_rows($resultGetRuta)){
        //existe la ruta en la base de datos
        $idRuta = mysqli_fetch_assoc($resultGetRuta)['id'];
        insertarHorario($cooperativa, $horario, $idRuta);
    } else {
        //no existe la ruta en la bd, hay que hacerla
        $nuevaRutaId = (mysqli_fetch_assoc(mysqli_query($conn, "SELECT max(id) from ruta"))['max(id)'] + 1);
        $rutaStr = "$nuevaRutaId,". $lugares[0] . ", 1)," . "($nuevaRutaId,". $lugares[1] . ", 2";
        for ($i=2; $i < count($lugares); $i++) { 
            $rutaStr .= ") , ($nuevaRutaId,".$lugares[$i].",".($i+1); 
        }
        if(consultasSQL::InsertSQL("ruta", "id, id_lugar, posicion", $rutaStr)){
            insertarHorario($cooperativa, $horario, $nuevaRutaId);
        } else {
            echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Ha ocurrido un error.<br>Por favor intente nuevamente</p>'; 
        }
    }
}

function insertarHorario($coop, $horario, $ruta){
    if(consultasSQL::InsertSQL("horario", "cooperativa, hora, id_ruta", "'$coop','$horario','$ruta'")){
        echo '<img src="assets/img/correcto.png" class="center-all-contens"><br><p class="lead text-center">Horario añadido éxitosamente</p>';
    }else{
        echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Ha ocurrido un error.<br>Por favor intente nuevamente</p>'; 
    }
}


// if(!$lugarCom=="" && !$lugarPais==""){
//     $verificar=  ejecutarSQL::consultar("select * from lugar where Comunidad='".$lugarCom."' /*and Estado='$lugarEstado'*/ and Pais='$lugarPais'");
//     $verificaltotal = mysql_num_rows($verificar);
//     if($verificaltotal<=0){
//         if(consultasSQL::InsertSQL("lugar", "Comunidad, Estado, Pais", "'$lugarCom','$lugarEstado','$lugarPais'")){
//             echo '<img src="assets/img/correcto.png" class="center-all-contens"><br><p class="lead text-center">Lugar añadido éxitosamente</p>';
//         }else{
//            echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Ha ocurrido un error.<br>Por favor intente nuevamente</p>'; 
//         }
//     }else{
//         echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">El lugar que ha ingresado ya existe.<br>Por favor ingrese otro</p>';
//     }
// }else {
//     echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Error los campos no deben de estar vacíos</p>';
// }
