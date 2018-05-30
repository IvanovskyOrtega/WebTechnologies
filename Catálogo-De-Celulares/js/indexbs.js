$(document).ready(function(){

    var jsons;
    var marcas = [];

    /* Hacemos una peticion al servidor del contenido del archivo JSON */
    $.getJSON( "phps/obtenerDispositivos.php", function( data ) {

      /*
        El servidor regresa el JSON en cadena, getJSON realiza el parseo
        automáticamente.
      */
      jsons = data;
      var dispCard;
      var dispModal;

      for(var dispositivo in jsons){
        /*
          Cada miembro del objeto JSON tiene un objeto como valor el cual contiene
          las caracteristicas del dispositivo.
        */
        datos = jsons[dispositivo];
        dispCard = "";
        dispModal = "";

        /* En esta parte agregamos la Card de cada dispositivo */

        dispCard += "<div class='filtr-item col-12 col-sm-6 col-sm-6 col-md-4 col-lg-3' data-category='"+datos.marca+"'>";
        dispCard += "<div id='"+dispositivo+"card' class='card mb-3 text-center'>";
        dispCard += "<h6 class='card-header center-text text-white'>"+datos.nombre+"</h6>";
        dispCard += "<img class='card-img center' src="+datos.imgs[0]+" alt='Card image cap'>";
        dispCard += "<div class='card-body'>";
        dispCard += "<button type='button' class='btn btn-dark bottom' data-toggle='modal' data-target='#"+dispositivo+"modal'>Ver m&aacute;s</button>";
        dispCard += "</div>";
        dispCard += "</div>";
        dispCard += "</div>";
        dispCard += "</div>";
        $(".dispositivos").append(dispCard);

        /* En esta parte agregamos el Modal de cada dispositivo */
        dispModal += "<div class='modal fade' id='"+dispositivo+"modal' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>";
        dispModal += "<div class='modal-dialog modal-lg' role='document'>";
        dispModal += "<div class='modal-content'>";
        dispModal += "<div class='modal-header'>";
        dispModal += "<h3 class='modal-title' id='"+dispositivo+"modallabel'>"+datos.nombre+"</h3>";
        dispModal += "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>";
        dispModal += "<span aria-hidden='true'>&times;</span>";
        dispModal += "</button>";
        dispModal += "</div>";
        dispModal += "<div class='modal-body'>";
        dispModal += "<div class='row'>";
        dispModal += "<div class='col-xs-12 col-sm-5 col-md-5 col-lg-5'>";
        dispModal += "<div id='"+dispositivo+"carousel' class='carousel slide' data-ride='carousel'>";
        dispModal += "<div class='carousel-inner'>";
        dispModal += "<div class='carousel-item active'>";
        dispModal += "<img class='d-block w-100' src="+datos.imgs[0]+" alt='First slide'>";
        dispModal += "</div>";
        dispModal += "<div class='carousel-item'>";
        dispModal += "<img class='d-block w-100' src="+datos.imgs[1]+" alt='Second slide'>";
        dispModal += "</div>";
        dispModal += "<div class='carousel-item'>";
        dispModal += "<img class='d-block w-100' src="+datos.imgs[2]+" alt='Third slide'>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "<a class='carousel-control-prev' href='#"+dispositivo+"carousel' role='button' data-slide='prev'>";
        dispModal += "<span class='carousel-control-prev-icon' aria-hidden='true'></span>";
        dispModal += "<span class='sr-only'>Previous</span>";
        dispModal += "</a>";
        dispModal += "<a class='carousel-control-next' href='#"+dispositivo+"carousel' role='button' data-slide='next'>";
        dispModal += "<span class='carousel-control-next-icon' aria-hidden='true'></span>";
        dispModal += "<span class='sr-only'>Next</span>";
        dispModal += "</a>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "<div class='col-xs-12 col-sm-7 col-md-7 col-lg-7'>";
        dispModal += "<h5><i class='fas fa-info-circle'></i> Descripci&oacute;n</h5><p class='disp-desc'>"+datos.desc+"</p>";
        dispModal += "<h5><i class='fas fa-camera'></i> C&aacute;mara</h5><p class='disp-desc'>"+datos.camara+"</p>";
        dispModal += "<h5><i class='fas fa-mobile-alt'></i> Pantalla</h5><p class='disp-desc'>"+datos.pantalla+"</p>";
        dispModal += "<h5><i class='fas fa-memory'></i> Memoria</h5><p class='disp-desc'>"+datos.memoria+"</p>";
        dispModal += "<h5><i class='fas fa-microchip'></i> Procesador</h5><p class='disp-desc'>"+datos.procesador+"</p>";

        /* Se selecciona el icono de acuerdo al Sistema Operativo */
        if(datos.sistema.includes("Android")){
          dispModal += "<h5><i class='fab fa-android'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
        }else if (datos.sistema.includes("Windows")) {
          dispModal += "<h5><i class='fab fa-windows'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
        }else if (datos.sistema.includes("iOS")) {
          dispModal += "<h5><i class='fab fa-apple'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
        }else if (datos.sistema.includes("BlackBerry")) {
          dispModal += "<h5><i class='fab fa-blackberry'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
        }

        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "</div>";
        dispModal += "</div>";

        $(".modals").append(dispModal);

        if(!marcas.includes(datos.marca)){
          marcas.push(datos.marca);
        }

      }

      for(var i = 0; i < marcas.length; i++){
        $(".filtros").append("<div class='col'><input data-filter='"+marcas[i]+"' class='form-check-input' type='checkbox' id="+marcas[i]+"><label class='form-check-label' for="+marcas[i]+">"+marcas[i]+"</label></div>");
      }

      var filterizd = $('.filtr-container').filterizr({});
      
    }).done(function() {
      console.log( "Se ha cargado el JSON de los dispositivos" );
    }).fail(function() {
      console.log( "Error al cargar el JSON" );
    }).always(function() {
      console.log( "OK" );
    });

});
