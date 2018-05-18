$(document).ready(function(){
  /*
    Esto es temporal
  */
  $.ajax({
      url:"./phps/obtenerDispositivos.php",
      cache:false,
      success:function(respAX){
          $.alert({
              title:"<h3 class='blue-text'>Resp Ajax</h3>",
              content:respAX,
              type:"green"
          });
          alert(respAX);
      }
  });
});
