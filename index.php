<!DOCTYPE html>
<html lang="es">

<?php 
include_once("Horario\conexion.php");
?>

<head>
  <title>Inicio</title>
  <?php include './inc/link.php'; ?>

  <script type="text/javascript" src="js/indexscript.js"></script>
</head>

<body id="container-page-index">
<?php include './inc/navbar.php'; ?>
  <h3><span class="tittles-pages-logo">Otech</span> <small style="color: #fff;"></small></h1>

  <br>
  <br>
  <br>
  <type="button" class="btn btn-info" div class ="text-center">
    <br>
    <div class="row" id="no_selection">Seleccione un origen y un destino</div>
    <br>
    <select id="select_origen" style="color:black"type="button" class="btn btn-info">
    <br>
     
    <option value="" selected="selected">Origen</option>
      <?php
        $sql="SELECT comunidad, estado, id from lugar order by comunidad";
        $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
        while($rows = mysqli_fetch_assoc($resultset)){ ?>
          <option value="<?php echo $rows["id"];?>"><?php echo $rows["comunidad"] . " " . $rows["estado"];?></option>
        <?php } 
      ?>
        <br>
        <ul></ul>

    </select>

    <select id="select_destino" style="color:black" type="button" class="btn btn-info">Action</button>
      <option value="" selected="selected">Destino</option>
      <?php
        $sql="SELECT comunidad, estado, id from lugar order by comunidad";
        $resultset = mysqli_query($conn, $sql) or die("database error". mysqli_error($conn));
        while($rows = mysqli_fetch_assoc($resultset)){ ?>
          <option value="<?php echo $rows["id"];?>"><?php echo $rows["comunidad"] . " " . $rows["estado"];?></option>
        <?php } 
      ?>
    </select>
  </div>
  <ul>

  
  </ul>
  
  <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  <table class="table">
    <thead class="thead-dark">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Cooperativa</th>
        <th scope="col">Ruta</th>
        <th scope="col">Hora de salida</th>
      </tr>
    </thead>
    <tbody id="results_table">
      
    </tbody>

  </table>
</div>            
  
</body>
</html>