$(document).ready(function(){  
	// code to get all records from table via select box
	$("#persona").change(function() {    
		var id = $(this).find(":selected").val();
		var dataString = 'empid='+ id;    
		$.ajax({
			url: 'getPersonal.php',
			dataType: "json",
			data: dataString,  
			cache: false,
			success: function(employeeData) {
			   if(employeeData) {
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
});
