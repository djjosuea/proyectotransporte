<?php
include_once("configServer.php");
if($_GET['origen'] and $_GET['destino']){
    $origen = $_GET['origen'];
    $destino = $_GET['destino'];
    //seleccionar informacion de horarios y rutas
    $sql = "SELECT horario.id, hora, idruta, posicion, comunidad, estado, pais, cooperativa FROM horario 
            inner join ( 
                SELECT *, id as idruta from ruta 
                INNER JOIN ( 
                    select comunidad, estado, pais, id AS idlugar from lugar 
                ) lugar 
                ON ruta.id_lugar = lugar.idlugar
                WHERE
                    (SELECT posicion from ruta as rutaOrigen where rutaOrigen.id = ruta.id and rutaOrigen.id_lugar = /*el lugar de origen*/ $origen)
                    <
                    (SELECT posicion from ruta as rutaDestino where rutaDestino.id = ruta.id and rutaDestino.id_lugar = /*el lugar de destino*/ $destino)
            ) horarioruta
            where horarioruta.idruta = horario.id_ruta
            ORDER BY horario.id, posicion";
    $result = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
    $data = "[";
    $first = true;

    while($row = mysqli_fetch_assoc($result)){
        if($row['posicion'] == "1"){
            if(!$first){
                $data .= "]},";
            } else {
                $first = false;
            }
            $data .= "{\"id\":" . $row['id'] . ",".
                      "\"cooperativa\": \"" . $row['cooperativa'] . "\",".
                      "\"hora\": \"" . $row['hora'] . "\",". 
                      "\"ruta\": [\"" . $row['comunidad'] . " " . $row['estado'] . "\"";
        }else{
            $data .= ", \"" . $row['comunidad'] . " " . $row['estado'] . "\"";
        }
    }
    $data .= "]}]";
    echo $data;
    exit;
} 
?>