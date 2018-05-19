$(document).ready(function(){

  var jsons;


  $.ajax({

      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){

        jsons = jQuery.parseJSON(respAX);
        var dispCard = "";
        var dispModal = "";

        for(var dispositivo in jsons){
          datos = jQuery.parseJSON(jsons[dispositivo]);
          dispCard = "";
          dispModal = "";

          /* En esta parte agregamos la Materialize Card de cada dispositivo */
          dispCard+= "<div class='"+dispositivo+" col s12 m6 l4'>";
          dispCard+= "<div class='card horizontal hoverable'><div class='card-image'>";
          dispCard+= "<img src="+datos.imgs[0]+"></div>";
          dispCard+= "<div class='card-stacked'><div class='card-content'><p>"+datos.nombre+"</p></div>";
          dispCard+= "<div class='card-action'><button data-target='"+dispositivo+"modal' class='waves-effect indigo btn modal-trigger' id="+dispositivo+">Ver</button></div>";
          dispCard+= "</div></div></div>";
          $(".dispositivos").append(dispCard);

          /* En esta parte agregamos el Modal de cada dispositivo */
          dispModal += "<div id='"+dispositivo+"modal' class='modal modal-fixed-footer'>";
          dispModal += "<div class='modal-content'><h4 class='center-align'>"+datos.nombre+"</h4>";
          dispModal += "<div class='col s12 m4'>";
          dispModal += "<div class='fotorama' data-transition='dissolve' data-nav='thumbs'><img src="+datos.imgs[0]+">";
          dispModal += "<img src="+datos.imgs[1]+">";
          dispModal += "<img src="+datos.imgs[2]+"></div></div>";
          dispModal += "<div class='col s12 m6'></div></div>";
          dispModal += "<div class='modal-footer'>";
          dispModal += "<a href='#!' class='modal-close waves-effect waves-green btn-flat'>Cerrar</a>";
          dispModal += "</div></div>";
          $(".modals").append(dispModal);

        }

        /* Se inicializan despues de haber sido agregados */
        $('.modal').modal();
        $('.slider').slider({fullWidth: false});
        $('.fotorama').fotorama();

      }
  });


  $(".dispositivos").on("click",".btn",function(){
      var dispositivo = $(this).attr("id");
  });

});
