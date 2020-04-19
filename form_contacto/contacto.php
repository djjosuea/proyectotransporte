

 <title>Inicio</title>
 
<nav id="navbar-auto-hidden">
        <div class="row hidden-xs"><!-- Menu computadoras y tablets -->
            <div class="col-xs-4">  </div>
            <div class="col-xs-8">
                <div class="contenedor-tabla pull-right">
                    <div class="contenedor-tr">
                        <a href="../index.php" type="button" class="btn btn-primary">REGRESAR</a>
                        <a href="#" class="social-icon all-elements-tooltip" data-toggle="tooltip" data-placement="bottom">
                        <img src="images/bus.jpg">

<?php
include('conexion.php');
if((isset($_POST['name']) && !empty($_POST['name']))
&& (isset($_POST['email']) && !empty($_POST['email']))
&& (isset($_POST['subject']) && !empty($_POST['subject']))){

	$name = $_POST['name'];
	$email = $_POST['email'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	$to = "elweycl@gmail.com";
	$headers = "From : " . $email;
	if( mail($to, $subject, $message, $headers)){
	$query = "INSERT INTO `contacto` (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";
		$result = mysqli_query($connection, $query);
		echo "<center>E-Mail Enviado con exito, nos pondremos en contacto con usted pronto.</center>";
	}
}
?>
<html>
<head>
 <title>Sistema de contacto otechecuador</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
 <link rel="stylesheet" href="styles.css" >
 </head>
<body>
 <div class="container">
      <form class="form-contact" method="POST">
        <h2 class="form-contact-heading">Sistema de contacto</h2>
        <H3>Tu información es importante para nosotros...</H3>
        <label for="inputName" class="sr-only">Nombres</label>
        	<input type="name" name="name" id="inputName" class="form-control" placeholder="Su nombre" required>
        <label for="inputEmail" class="sr-only">E-Mail</label>
        	<input type="email" name="email" id="inputEmail" class="form-control" placeholder="name@email.com" required>
        <label for="inputSubject" class="sr-only">Asunto</label>
        	<input type="name" name="subject" id="inputSubject" class="form-control" placeholder="Asunto" required>
        <label for="inputMessage" class="sr-only">Mensaje</label>
    		<textarea name="message" class="form-control" id="inputMessage" rows="3"></textarea>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Enviar Formulario</button>
      </form>
</div>
 </body>
 </html>