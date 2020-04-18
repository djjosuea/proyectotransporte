$(document).ready(function(){  
	console.log("document horario ready");
	
	// code to get all records from table via select box
	$("#persona").change(function() {    
		var id = $(this).find(":selected").val();
		var dataString = 'empid='+ id;    
		$.ajax({
			url: 'getPersona.php',
			dataType: "json",
			data: dataString,  
			cache: false,
			success: function(employeeData) {
			   if(employeeData) {
				console.log(employeeData);
				
				$("#heading").show();		  
				$("#no_records").hide();					
				$("#emp_nombre").text(employeeData.nombre_cooperativa);
				$("#emp_origen").text(employeeData.origen_persona);
				$("#emp_ruta").text(employeeData.ruta_persona);
				$("#emp_destino").text(employeeData.destino_persona);
				$("#emp_hora").text(employeeData.ruta_hora);
				$("#records").show();		 	 
				} else {
					$("#heading").hide();
					$("#records").hide();
					$("#no_records").show();
				}   	
			} 
		});
	 }) 
	
	//  var fromSelected = false;
	//  var toSelected = false;
	// $("idDesde").change(function(){
	// 	//si no es el valor por defecto
	// 	//fromSelected = true;

	// 	//si fromSelected & toSelected
	// 	//ejecutar la funcion que haga la llamada
	// })

	// $("idHasta").change(function () {
	// 	//si no es el valor por defecto
	// 	//toSelected = true;

	// 	//si fromSelected & toSelected
	// 	//ejecutar la funcion que haga la llamada
		
	// })

	// function consultarHorario(desde, hasta, cooperativa) {
		
	// }
});
