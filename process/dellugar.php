<?php
session_start();
include '../library/configServer.php';
include '../library/consulSQL.php';

sleep(5);
$codeLugar= $_POST['lugar-code'];
$cons=  ejecutarSQL::consultar("select * from lugar where id='$codeLugar'");
$totallugar = mysql_num_rows($cons);

if($totallugar>0){
    if(consultasSQL::DeleteSQL('lugar', "id='".$codeLugar."'")){
        echo '<img src="assets/img/correcto.png" class="center-all-contens"><br><p class="lead text-center">Lugar eliminado éxitosamente</p>';
    }else{
       echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">Ha ocurrido un error.<br>Por favor intente nuevamente</p>'; 
    }
}else{
    echo '<img src="assets/img/incorrecto.png" class="center-all-contens"><br><p class="lead text-center">El código del lugar no existe</p>';
}
