$( document ).ready( onReady );

let validaciones = {
  regExp: {
    reEmail: {
      pattern: /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i,
      errorMessage: "Email invalido"
    }
  }
}

function onReady(){
  $( '.sidenav' ).sidenav();
  $( '.tabs' ).tabs();
  datosContrasenaFormulario();
  datosContactoFormulario();
  datosPersonalesFormulario();
}

function datosContrasenaFormulario(){
  $( "#cambiar_contrasena" ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      $.ajax({
        // Inserta aqui la peticion al servidor.
      });
    }
  });
}

function datosContactoFormulario(){
  $( "#datos_contacto" ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      $.ajax({
        // Inserta aqui la peticion al servidor.
      });
    }
  });
}

function datosPersonalesFormulario(){
  $( "#datos_personales" ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      $.ajax({
        // Inserta aqui la peticion al servidor.
      });
    }
  });
}
