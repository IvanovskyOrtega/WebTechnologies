$(document).ready(function(){

  var jsons;


  $.ajax({

      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){

        jsons = jQuery.parseJSON(respAX);
        var dispCard;
        var dispModal;

        for(var dispositivo in jsons){
          datos = jQuery.parseJSON(jsons[dispositivo]);
          dispCard = "";
          dispModal = "";

          /* En esta parte agregamos la Materialize Card de cada dispositivo */
          dispCard+= "<div class='"+dispositivo+" col s12 m6 l4'>";
          dispCard+= "<div class='card horizontal hoverable'><div class='card-image'>";
          dispCard+= "<img src="+datos.imgs[0]+"></div>";
          dispCard+= "<div class='card-stacked'><div class='card-content'><p class='disp-nombre'>"+datos.nombre+"</p></div>";
          dispCard+= "<div class='card-action'><button data-target='"+dispositivo+"modal' class='waves-effect indigo btn modal-trigger' id="+dispositivo+">Ver</button></div>";
          dispCard+= "</div></div></div>";
          $(".dispositivos").append(dispCard);

          /* En esta parte agregamos el Modal de cada dispositivo */
          dispModal += "<div id='"+dispositivo+"modal' class='modal modal-fixed-footer'>";
          dispModal += "<div class='modal-content'><h4 class='center-align'>"+datos.nombre+"</h4>";
          dispModal += "<div class='col s12 m4'>";
          dispModal += "<div class='fotorama' data-navposition='top' data-loop='true' data-fit='scaledown' data-transition='dissolve' data-nav='thumbs'>";
          dispModal += "<img src="+datos.imgs[0]+">";
          dispModal += "<img src="+datos.imgs[1]+">";
          dispModal += "<img src="+datos.imgs[2]+"></div></div>";
          dispModal += "<div class='col s12 m8'>";
          dispModal += "<h5><i class='fas fa-info-circle'></i> Descripci&oacute;n</h5><p class='disp-desc'>"+datos.desc+"</p>";
          dispModal += "<h5><i class='fas fa-camera'></i> C&aacute;mara</h5><p class='disp-desc'>"+datos.camara+"</p>";
          dispModal += "<h5><i class='fas fa-mobile-alt'></i> Pantalla</h5><p class='disp-desc'>"+datos.pantalla+"</p>";
          dispModal += "<h5><i class='fas fa-memory'></i> Memoria</h5><p class='disp-desc'>"+datos.memoria+"</p>";
          dispModal += "<h5><i class='fas fa-microchip'></i> Procesador</h5><p class='disp-desc'>"+datos.procesador+"</p>";

          /* Se selecciona el icono de acuerdo al Sistema Operativo */
          if(datos.sistema.includes("Android")){
            dispModal += "<h5><i class='fab fa-android'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }
          else if (datos.sistema.includes("Windows")) {
            dispModal += "<h5><i class='fab fa-windows'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }else if (datos.sistema.includes("iOS")) {
            dispModal += "<h5><i class='fab fa-apple'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }else if (datos.sistema.includes("BlackBerry")) {
            dispModal += "<h5><i class='fab fa-blackberry'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }

          dispModal += "</div></div>";
          dispModal += "<div class='modal-footer'>";
          dispModal += "<a class='modal-close waves-effect waves-green btn-flat'>Cerrar</a>";
          dispModal += "</div></div>";
          $(".modals").append(dispModal);

        }

        /* Se inicializan despues de haber sido agregados */
        $('.modal').modal();
        $('.fotorama').fotorama();

      }
  });

});
