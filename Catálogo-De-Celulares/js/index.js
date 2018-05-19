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
        for(var i in jsons){
          dispositivo = jQuery.parseJSON(jsons[i]);
          //alert(jQuery.parseJSON(jsons[i]).nombre);
          dispCard+="<div class='card col s12 m4'><div class='card-image'>";
          dispCard+="<img src="+dispositivo.imgs[0]+">";
          dispCard+="<span class='card-title'>"+dispositivo.nombre+"</span></div>";
          dispCard+="<div class='card-content'></div>";
          //dispCard+="<p>"+dispositivo.desc+"</p></div>";
          dispCard+="<div class='card-action'><a href='#'>Ver m&aacute;s</a>";
          dispCard+="</div></div>";
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
