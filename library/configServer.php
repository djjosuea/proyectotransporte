<?php
define("USER", "root");
define("SERVER", "localhost");
define("BD", "store");
define("PASS", "");
?>
<?php

/* Iniciamos la conexion con MySQL */
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "store";
$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Conexion fallida: " . mysqli_connect_error());
if (mysqli_connect_errno()) {
    printf("La conexion ha fallado: %s\n", mysqli_connect_error());
    exit();
}

?>