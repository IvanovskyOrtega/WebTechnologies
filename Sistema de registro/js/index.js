$( document ).ready( onReady );

let validaciones = {
  regExp: {
    reReferencia: {
      pattern: /^PP[0-9]+$/i,
      errorMessage: "El numero de referencia debe tener el siguiente formato: PP12341234"
    }
  }
}

function onReady(){
  $( "#login_formulario" ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      $.ajax({
        method: "post",
        url: "./php/index.php",
        data: $( "#login_formulario" ).serialize(),
        cache: false,
        success: function( resp ){
          alert( resp );
          window.location.replace( "./html/pagina_inicio.php" );
        }
      });
    }
  });
}
