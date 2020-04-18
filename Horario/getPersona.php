<?php
include_once("conexion.php");
if($_REQUEST['empid']) {
	$sql = "SELECT id, nombre_cooperativa, origen_persona, ruta_persona, destino_persona , ruta_hora FROM persona WHERE id='".$_REQUEST['empid']."'";
	$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
	
	$data = array();
	while( $rows = mysqli_fetch_assoc($resultset) ) {
		$data = $rows;
	}
	echo json_encode($data);
} else {
	echo 0;	
}
?>
