$(document).ready(function(){

  var jsons;

  $.ajax({

      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){

        jsons = jQuery.parseJSON(respAX);
        var dispCard = "";

        for(var dispositivo in jsons){
          datos = jQuery.parseJSON(jsons[dispositivo]);
          dispCard+="<div id='"+dispositivo+"' class='col s12 m6 l4'>";
          dispCard+="<div class='card horizontal hoverable'><div class='card-image'>";
          dispCard+="<img src="+datos.imgs[0]+"></div>";
          dispCard+="<div class='card-stacked'><div class='card-content'><p>"+dispositivo+"</p></div>";
          dispCard+="<div class='card-action'><a class='waves-effect indigo btn'>Ver</a></div>";
          dispCard+="</div></div></div>";
        }

        $(".dispositivos").append(dispCard);

      }
  });

});
