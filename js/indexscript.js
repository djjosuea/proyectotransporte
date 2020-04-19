$(document).ready(function(){  
    console.log("document index ready");
    
    // code to get all records from table via select box
    
    $("#select_origen").change(changeSelection);    
    $("#select_destino").change(changeSelection);
    
    function changeSelection() {
        var origen = $("#select_origen").find(":selected").val();
        var destino = $("#select_destino").find(":selected").val();
        
        if (origen !== "" & destino !== ""){
            console.log("getting ajax");
            $.ajax({
                url: './library/getHorarios.php',
                method: "GET",
                data: {origen, destino},
                dataType: "json",
                cache:false,
                success: function(data){
                    if(data){
                        tableData = '';
                        $.each(data, function(key, value) {
                            tableData += "<tr>";
                            tableData += "<th>" + value.id + "</th>";
                            tableData += "<td>" + value.cooperativa + "</td>";
                            tableData += "<td>" + value.ruta.toString() + "</td>";
                            tableData += "<td>" + value.hora + "</td>";
                            tableData += "</tr>";
                        });
                        $("#results_table").html(tableData);
                        //console.log(data);
                    } else {
                        //modificar interfaz adecuadamente
                        console.log("en realidad nada");
                    }
                },
                error: function(jqXHR, textStatus, errorThrown ){
                    console.error(errorThrown, textStatus);   
                }
            });
        }
    }
    
  });