<?php
session_start();
include '../library/configServer.php';
include '../library/consulSQL.php';

sleep(2);


// $lugarCom = $_POST['lugar-com'];
// $lugarEstado = $_POST['lugar-estado'];
// $lugarPais = $_POST['lugar-pais'];

if($_POST['ruta']){
    $lugares = $_POST['ruta'];
    echo implode("-",$lugares) ;
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
