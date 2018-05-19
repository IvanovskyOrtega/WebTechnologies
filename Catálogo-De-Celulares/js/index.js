$(document).ready(function(){
  /*
    Esto es temporal
  */
  $.ajax({
      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){
        var json = jQuery.parseJSON(respAX);
        for(var k in json){
          alert(jQuery.parseJSON(json[k]).nombre);
        }
        $.alert({
            title:"<h3 class='blue-text'>Resp Ajax</h3>",
            content:json,
            type:"green"
        });
      }
  });
});
