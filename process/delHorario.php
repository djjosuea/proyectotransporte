<?php
session_start();
include '../library/configServer.php';
include '../library/consulSQL.php';

sleep(5);
$codeHorario= $_POST['horario-code'];
$cons=  ejecutarSQL::consultar("select * from horario where id='$codeHorario'");
$totalhorarios = mysql_num_rows($cons);

if($totalhorarios>0){
    if(consultasSQL::DeleteSQL('horario', "id='".$codeHorario."'")){
        echo '<img src="assets/img/correcto.png" class="center-all-contens"><br><p class="lead text-center">Horario eliminado éxitosamente</p>';
    }else{
       echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Ha ocurrido un error.<br>Por favor intente nuevamente</p>'; 
    }
}else{
    echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">El código del horario no existe</p>';
}
