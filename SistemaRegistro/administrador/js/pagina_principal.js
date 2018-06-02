$( document ).ready( onReady );

function onReady(){
  $( '.parallax' ).parallax();
  $( '.tabs' ).tabs();
  $( 'select' ).formSelect();
  document.getElementById( "buscar_alumno" ).addEventListener( 'keypress', function( event ){
    $( '#tabla_alumno' ).empty();
    if( event.keyCode === 13 ){
      let referencia = document.getElementById( "buscar_alumno" ).value;
      let re = new RegExp( /^P(P|E)[0-9]+$/i );
      if( re.test( referencia ) ){
        event.preventDefault();
        $.ajax({
          method: "post",
          url: "./../php/busqueda_personalizada.php",
          data: { referencia: referencia },
          cache: false,
          success: function( resp ){
            $( '#tabla_alumno' ).html( resp );
          }
        });
      }
    }
  });
  $( '#selector_salon' ).change( function( event ){
  });
  $( '#selector_horario' ).change( function( event ){
    $( '#tabla_horario' ).empty();
    event.preventDefault();
    var laboratorio = document.getElementById( "selector_salon" ).value;
    var horario = document.getElementById( "selector_horario" ).value;
    if( horario !== "" && laboratorio !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tabla_horario.php",
        data: { laboratorio: laboratorio, horario: horario },
        cache: false,
        success: function( resp ){
          $( '#tabla_horario' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
  $( '#selector_alumno' ).change( function( event ){
    $( '#tabla_alumno' ).empty();
    event.preventDefault();
    var filtrado = document.getElementById( "selector_alumno" ).value;
    if( filtrado !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tabla_alumno.php",
        data: { filtrado: filtrado },
        cache: false,
        success: function( resp ){
          $( '#tabla_alumno' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
  $( '#selector_escuela' ).change( function( event ){
    $( '#tabla_escuela' ).empty();
    event.preventDefault();
    var filtrado = document.getElementById( "selector_escuela" ).value;
    if( filtrado !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tabla_escuela.php",
        data: { filtrado: filtrado },
        cache: false,
        success: function( resp ){
          $( '#tabla_escuela' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
}
