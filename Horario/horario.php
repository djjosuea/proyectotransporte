<?php 
include_once("conexion.php");
?>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="assets/sticky-footer-navbar.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="js/getData.js"></script>
</head>

<body>
<header> 
  <!-- Fixed navbar -->
 
    

        
      </ul>
  
    </div>
  </nav>
</header>

<!-- Begin page content -->

<div class="container">

  <hr>
  <div class="row">
    <div class="col-12 col-md-10"> 
      <!-- Contenido -->
      


<div class="container">
	<div class="page-header">
        <h3>
        <select id="persona">
        <option value="" selected="selected">Selecionar </option>
      <?php
		$sql = "SELECT id, nombre_cooperativa, origen_persona, ruta_persona, destino_persona, ruta_hora FROM persona LIMIT 10";
		$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
		while( $rows = mysqli_fetch_assoc($resultset) ) { 
		?>
		<option value="<?php echo $rows["id"]; ?>"><?php echo $rows["nombre_cooperativa"]; ?></option>
		<?php }	?>
		</select>
      
        </div>	
<br>
		<div id="display">
			<div class="row" id="heading" style="display:none;">
<br><h5>Resultados de la Base de Datos.</h5><br>           
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre Cooperativa</th>
      <th scope="col">Origen </th>
      <th scope="col">Ruta</th>
      <th scope="col">Destino</th>
      <th scope="col">Hora de salida</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><div class="col-sm-4" id="emp_nombre"></div></td>
      <td><div class="col-sm-4" id="emp_origen"></div></td>
      <td><div class="col-sm-4" id="emp_ruta"></div></td>
      <td><div class="col-sm-4" id="emp_destino"></div></td>
      <td><div class="col-sm-4" id="emp_hora"></div></td>

    </tr>

  </tbody>
</table>   
</div>
            
<br>		
<div class="row" id="no_records">
            
<div class="col-sm-10">Por favor, seleccione el nombre del empleado para ver los detalles</div></div>
        </div>		
</div>
      <!-- Fin Contenido --> 
    </div>
  </div>
  <!-- Fin row --> 
  
</div>
<!-- Fin container -->
<footer class="footer">
  <div class="container"> <span class="text-muted">
    </span> </div>
</footer>

<!-- Bootstrap core JavaScript
    ================================================== --> 
<script src="dist/js/bootstrap.min.js"></script> 
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>