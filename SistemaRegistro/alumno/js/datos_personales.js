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
}

function datosContrasenaFormulario(){
  $( "#cambiar_contrasena" ).validetta({
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      if( document.getElementById( "contrasena_nueva" ).value === document.getElementById( "contrasena_repite" ).value ){
        event.preventDefault();
        $.ajax({
          method: "post",
          url: "./../php/cambia_contrasena.php",
          data: $( "#cambiar_contrasena" ).serialize(),
          cache: false,
          success: function( resp ){
            if( resp == 1 ){
              $( "#cambiar_contrasena" )[0].reset();
              swal({
                title: "¡En hora buena!",
                text: "Tu contraseña se ha actualizado exitosamente.",
                icon: "success"
              });
            }else{
              swal({
                title: "Lo sentimos...",
                text: "Tu contraseña actual es incorrecta, vuelve a intentarlo.",
                icon: "error"
              });
            }
          }
        });
      }else{
        swal({
          title: "Lo sentimos...",
          text: "Las contraseñas no coinciden.",
          icon: "error"
        });
      }
    },
    onError: function( resp ){
      swal({
        title: "Lo sentimos...",
        text: "Ha ocurrido un error, vuelve a intentarlo mas tarde.",
        icon: "error"
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
