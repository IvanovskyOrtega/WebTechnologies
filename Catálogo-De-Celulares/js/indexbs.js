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
          dispCard += "<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>";
          dispCard+="<div class='card mb-3' style='max-width: 18rem;'>";
          dispCard+="<img class='card-img-top' src="+datos.imgs[0]+" alt='Card image cap'>";
          dispCard+="<div class='card-body'>";
          dispCard+="<h5 class='card-title'>"+datos.nombre+"</h5>";
          dispCard += "<div class='col text-center'>"
          dispCard += "<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#"+dispositivo+"modal'>Ver m&aacute;s</button>";
          dispCard+="</div>";
          dispCard+="</div>";
          dispCard+="</div>";
          dispCard+="</div>";
          $(".dispositivos").append(dispCard);

          /* En esta parte agregamos el Modal de cada dispositivo */
          dispModal += "<div class='modal fade' id='"+dispositivo+"modal' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>";
          dispModal += "<div class='modal-dialog modal-lg' role='document'>";
          dispModal += "<div class='modal-content'>";
          dispModal += "<div class='modal-header'>";
          dispModal += "<h5 class='modal-title' id='exampleModalLabel'>"+datos.nombre+"</h5>";
          dispModal += "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>";
          dispModal += "<span aria-hidden='true'>&times;</span>";
          dispModal += "</button>";
          dispModal += "</div>";
          dispModal += "<div class='modal-body'>";
          dispModal += "<div class='row'>";
          dispModal += "<div class='col-xs-12 col-sm-4 col-md-4 col-lg-4'>";
          dispModal+="<div id='"+dispositivo+"carousel' class='carousel slide' data-ride='carousel'>";
          dispModal+="<div class='carousel-inner'>";
          dispModal+="<div class='carousel-item active'>";
          dispModal+="<img class='d-block w-100' src="+datos.imgs[0]+" alt='First slide'>";
          dispModal+="</div>";
          dispModal+="<div class='carousel-item'>";
          dispModal+="<img class='d-block w-100' src="+datos.imgs[1]+" alt='Second slide'>";
          dispModal+="</div>";
          dispModal+="<div class='carousel-item'>";
          dispModal+="<img class='d-block w-100' src="+datos.imgs[2]+" alt='Third slide'>";
          dispModal+="</div>";
          dispModal+="</div>";
          dispModal+="<a class='carousel-control-prev' href='#"+dispositivo+"carousel' role='button' data-slide='prev'>";
          dispModal+="<span class='carousel-control-prev-icon' aria-hidden='true'></span>";
          dispModal+="<span class='sr-only'>Previous</span>";
          dispModal+="</a>";
          dispModal+="<a class='carousel-control-next' href='#"+dispositivo+"carousel' role='button' data-slide='next'>";
          dispModal+="<span class='carousel-control-next-icon' aria-hidden='true'></span>";
          dispModal+="<span class='sr-only'>Next</span>";
          dispModal+="</a>";
          dispModal+="</div>";
          dispModal += "</div>";

          dispModal += "<div class='col-xs-12 col-sm-8 col-md-8 col-lg-8'>";
          dispModal += "<h5><i class='fas fa-info-circle red-text text-accent-3'></i> Descripci&oacute;n</h5><p class='disp-desc'>"+datos.desc+"</p>";
          dispModal += "<h5><i class='fas fa-camera red-text text-accent-3'></i> C&aacute;mara</h5><p class='disp-desc'>"+datos.camara+"</p>";
          dispModal += "<h5><i class='fas fa-mobile-alt red-text text-accent-3'></i> Pantalla</h5><p class='disp-desc'>"+datos.pantalla+"</p>";
          dispModal += "<h5><i class='fas fa-memory red-text text-accent-3'></i> Memoria</h5><p class='disp-desc'>"+datos.memoria+"</p>";
          dispModal += "<h5><i class='fas fa-microchip red-text text-accent-3'></i> Procesador</h5><p class='disp-desc'>"+datos.procesador+"</p>";

          /* Se selecciona el icono de acuerdo al Sistema Operativo */
          if(datos.sistema.includes("Android")){
            dispModal += "<h5><i class='fab fa-android red-text text-accent-3'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }else if (datos.sistema.includes("Windows")) {
            dispModal += "<h5><i class='fab fa-windows red-text text-accent-3'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }else if (datos.sistema.includes("iOS")) {
            dispModal += "<h5><i class='fab fa-apple red-text text-accent-3'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }else if (datos.sistema.includes("BlackBerry")) {
            dispModal += "<h5><i class='fab fa-blackberry red-text text-accent-3'></i> Sistema</h5><p class='disp-desc'>"+datos.sistema+"</p>";
          }
          dispModal += "</div>";

          dispModal += "</div>";
          dispModal += "</div>";
          dispModal += "</div>";
          dispModal += "</div>";
          dispModal += "</div>";
          dispModal += "</div>";
          $(".modals").append(dispModal);

        }

      }
  });

});
