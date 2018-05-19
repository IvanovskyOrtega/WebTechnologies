$(document).ready(function(){
  /*
    Esto es temporal
  */
  $.ajax({
      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){
        var cards = [];
        var jsons = jQuery.parseJSON(respAX);
        var dispCard = "";
        for(var dispositivo in jsons){
          datos = jQuery.parseJSON(jsons[dispositivo]);
          //alert(jQuery.parseJSON(jsons[i]).nombre);
          dispCard+="<div id='"+dispositivo+"' class='col s12 m4'>";
          dispCard+="<div class='card'><div class='card-image'>";
          dispCard+="<img src="+datos.imgs[0]+">";
          dispCard+="<span class='card-title'>"+datos.nombre+"</span></div>";
          dispCard+="<div class='card-content'></div>";
          //dispCard+="<p>"+dispositivo.desc+"</p></div>";
          dispCard+="<div class='card-action'><a href='#'>Ver m&aacute;s</a>";
          dispCard+="</div></div></div>";
        }
        $(".dispositivos").append(dispCard);
        /*
        $.alert({
            title:"<h3 class='blue-text'>Resp Ajax</h3>",
            content:json,
            type:"green"
        });
        */
      }
  });
});
