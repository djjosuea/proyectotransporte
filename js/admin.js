$(document).ready(function() {
    /*Envio del formulario con Ajax para eliminar producto*/
    $('#del-prod-form form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#del-prod-form form').serialize();
         var metodo=$('#del-prod-form form').attr('method');
         var peticion=$('#del-prod-form form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-del-prod").html('Eliminando producto <br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-del-prod").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-del-prod").html(data);
            }
        });
        return false;
    });
    
    /*Envio del formulario con Ajax para añadir categoria*/
    $('#add-categori form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#add-categori form').serialize();
         var metodo=$('#add-categori form').attr('method');
         var peticion=$('#add-categori form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-add-categori").html('Añadiendo categoria <br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-add-categori").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-add-categori").html(data);
            }
        });
        return false;
    });

    /*Envio del formulario con Ajax para eliminar categoria*/
    $('#del-categori form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#del-categori form').serialize();
         var metodo=$('#del-categori form').attr('method');
         var peticion=$('#del-categori form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-del-cat").html('Eliminando categoria <br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-del-cat").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-del-cat").html(data);
            }
        });
        return false;
    });

    /*Envio del formulario con Ajax para agregar proveedor*/
    $('#add-provee form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#add-provee form').serialize();
         var metodo=$('#add-provee form').attr('method');
         var peticion=$('#add-provee form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-add-prove").html('Agregando proveedor <br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-add-prove").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-add-prove").html(data);
            }
        });
        return false;
    });

    /*Envio del formulario con Ajax para eliminar proveedor*/
    $('#del-prove form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#del-prove form').serialize();
         var metodo=$('#del-prove form').attr('method');
         var peticion=$('#del-prove form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-del-prove").html('Eliminando proveedor <br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-del-prove").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-del-prove").html(data);
            }
        });
        return false;
    });
    
    /*Actualizar categoria con ajax*/
    $('.button-UC').click(function() {
	var myId = $(this).val();
        $('#update-category form#'+myId).submit(function(e) {
             e.preventDefault();
             var informacion=$('#update-category form#'+myId).serialize();
             var metodo=$('#update-category form#'+myId).attr('method');
             var peticion=$('#update-category form#'+myId).attr('action');
             $.ajax({
                type: metodo,
                url: peticion,
                data:informacion,
                beforeSend: function(){
                    $("div#"+myId).html('<br><img src="assets/img/Update.gif" class="center-all-contens"><br>Actualizando...');
                },
                error: function() {
                    $("div#"+myId).html("Ha ocurrido un error en el sistema");
                },
                success: function (data) {
                    $("div#"+myId).html(data);
                }
            });
            return false;
        });
    });
    
    /*Actualizar proveedores con ajax*/
    $('.button-UP').click(function() {
	var myId = $(this).val();
        $('#update-proveedor form#'+myId).submit(function(e) {
             e.preventDefault();
             var informacion=$('#update-proveedor form#'+myId).serialize();
             var metodo=$('#update-proveedor form#'+myId).attr('method');
             var peticion=$('#update-proveedor form#'+myId).attr('action');
             $.ajax({
                type: metodo,
                url: peticion,
                data:informacion,
                beforeSend: function(){
                    $("div#"+myId).html('<br><img src="assets/img/Update.gif" class="center-all-contens"><br>Actualizando...');
                },
                error: function() {
                    $("div#"+myId).html("Ha ocurrido un error en el sistema");
                },
                success: function (data) {
                    $("div#"+myId).html(data);
                }
            });
            return false;
        });
    });
    
    /*Actualizar producto con ajax*/
    $('.button-UPR').click(function() {
	var myId = $(this).val();
        $('#update-product form#'+myId).submit(function(e) {
             e.preventDefault();
             var informacion=$('#update-product form#'+myId).serialize();
             var metodo=$('#update-product form#'+myId).attr('method');
             var peticion=$('#update-product form#'+myId).attr('action');
             $.ajax({
                type: metodo,
                url: peticion,
                data:informacion,
                beforeSend: function(){
                    $("div#"+myId).html('<br><img src="assets/img/Update.gif" class="center-all-contens"><br>Actualizando...');
                },
                error: function() {
                    $("div#"+myId).html("Ha ocurrido un error en el sistema");
                },
                success: function (data) {
                    $("div#"+myId).html(data);
                }
            });
            return false;
        });
    });
    
    /*Envio del formulario con Ajax para agregar administrador*/
    $('#add-admin form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#add-admin form').serialize();
         var metodo=$('#add-admin form').attr('method');
         var peticion=$('#add-admin form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-add-admin").html('Agregando Administrador...<br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-add-admin").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-add-admin").html(data);
            }
        });
        return false;
    });
    
    /*Envio del formulario con Ajax para eliminar administrador*/
    $('#del-admin form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#del-admin form').serialize();
         var metodo=$('#del-admin form').attr('method');
         var peticion=$('#del-admin form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-del-admin").html('Eliminando Administrador<br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-del-admin").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-del-admin").html(data);
            }
        });
        return false;
    });
    
    /*Actualizar pedido con ajax*/
    $('.button-UPPE').click(function() {
	var myId = $(this).val();
        $('#update-pedido form#'+myId).submit(function(e) {
             e.preventDefault();
             var informacion=$('#update-pedido form#'+myId).serialize();
             var metodo=$('#update-pedido form#'+myId).attr('method');
             var peticion=$('#update-pedido form#'+myId).attr('action');
             $.ajax({
                type: metodo,
                url: peticion,
                data:informacion,
                beforeSend: function(){
                    $("div#"+myId).html('<br><img src="assets/img/Update.gif" class="center-all-contens"><br>Actualizando...');
                },
                error: function() {
                    $("div#"+myId).html("Ha ocurrido un error en el sistema");
                },
                success: function (data) {
                    $("div#"+myId).html(data);
                }
            });
            return false;
        });
    });
    
    /*Envio del formulario con Ajax para eliminar pedido*/
    $('#del-pedido form').submit(function(e) {
         e.preventDefault();
         var informacion=$('#del-pedido form').serialize();
         var metodo=$('#del-pedido form').attr('method');
         var peticion=$('#del-pedido form').attr('action');
         $.ajax({
            type: metodo,
            url: peticion,
            data:informacion,
            beforeSend: function(){
                $("#res-form-del-pedido").html('Eliminando Pedido...<br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-del-pedido").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                $("#res-form-del-pedido").html(data);
            }
        });
        return false;
    });

    $("#add-horario form").submit(function(e) {
        e.preventDefault();
        var ruta = [];
        $("#add-horario form select[name=lugares-ruta]").each(function() {
            ruta.push($(this).val()); 
        });
        var data = {
            cooperativa: $("#add-horario form input[name=cooperativa]").val(),
            horario: $("#add-horario form input[name=horario]").val(),
            ruta: ruta
        };
        var metodo=$('#add-horario form').attr('method');
        var peticion=$('#add-horario form').attr('action');
        $.ajax({
            type: metodo,
            url: peticion,
            data:data,
            beforeSend: function(){
                $("#res-form-add-horario").html('Añadiendo horario...<br><img src="assets/img/enviando.gif" class="center-all-contens">');
            },
            error: function() {
                $("#res-form-add-horario").html("Ha ocurrido un error en el sistema");
            },
            success: function (data) {
                console.log(data);
                $("#res-form-add-horario").html(data);
            }
        });
    })

    $("#addlugarruta").on("click", function() {
        $("#array-lugares").append($('select[name="lugares-ruta"]:eq('+(length-1)+')').clone());
        $("#remlugarruta").show();
    });
    
    $("#remlugarruta").on("click",function(){        
        if($('select[name="lugares-ruta"]').length > 2){
            $('select[name="lugares-ruta"]:eq('+(length-1)+')').remove();
            if($('select[name="lugares-ruta"]').length <= 2){
                $("#remlugarruta").hide();
            }
        }
    });

    $('#del-horario form').submit(function(e) {
        e.preventDefault();
        var informacion=$('#del-horario form').serialize();
        var metodo=$('#del-horario form').attr('method');
        var peticion=$('#del-horario form').attr('action');
        $.ajax({
           type: metodo,
           url: peticion,
           data:informacion,
           beforeSend: function(){
               $("#res-form-del-horario").html('Eliminando Horario...<br><img src="assets/img/enviando.gif" class="center-all-contens">');
           },
           error: function() {
               $("#res-form-del-horario").html("Ha ocurrido un error en el sistema");
           },
           success: function (data) {
               $("#res-form-del-horario").html(data);
           }
       });
       return false;
    });

    $('div[id^=update-array-lugares]').each(function () {
        if($(this).find('select').length <= 2){
            $(this).find('button[name="remlugarruta"]').hide();
        }
        var divLugares = $(this);
        $(this).find('button[name="addlugarruta"]').on("click",function(){
            divLugares.find('#array-lugares').append(
                divLugares.find('select[name="lugares-ruta"]:eq('+(length-1)+')').clone()
            );
            divLugares.find("button[name='remlugarruta']").show();
        });
        $(this).find('button[name="remlugarruta"]').on("click",function(){
            divLugares.find('select[name="lugares-ruta"]:eq('+(length-1)+')').remove();
            if(divLugares.find('select').length <= 2){
                $(this).hide();
            }
        })
    });

    $('.button-UH').click(function(){
        var myId = $(this).val();
        var numId = myId.substr(-1);
        $('form#'+myId).submit(function(e){
            e.preventDefault();
            var ruta = [];
            $("#update-array-lugares-"+numId+" select[name='lugares-ruta']").each(function() {
                ruta.push($(this).val());
            });
            var formArray = $('form#'+myId).serializeArray() ;
            var data = {
                id: formArray.find(e => e.name === "horario-code").value,
                cooperativa: formArray.find(e => e.name === "horario-coop").value,
                hora: formArray.find(e => e.name === "horario-hora").value,
                ruta: ruta
            };

            var metodo=$('form#'+myId).attr('method');
            var accion=$('form#'+myId).attr('action');
            $.ajax({
                type: metodo,
                url: accion,
                data: data,
                beforeSend: function(){
                    $("div#"+myId).html('<br><img src="assets/img/Update.gif" class="center-all-contens"><br>Actualizando...');
                },
                error: function(){
                    $("div#"+myId).html("Ha ocurrido un error en el sistema");
                },
                success: function(data){
                    $("div#"+myId).html(data);
                }
            })
        })
    });

});


