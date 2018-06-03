$( document ).ready( onReady );

let validaciones = {
  regExp: {
    reReferencia: {
      pattern: /^P(P|E)[0-9]+$/i,
      errorMessage: "El numero de referencia debe tener el siguiente formato: PP + 8 digitos o PE + 8 digitos"
    }
  }
}

function onReady(){
  $( '.parallax' ).parallax();
  $( '.tabs' ).tabs();
  $( 'select' ).formSelect();
  $( '.tabs' ).click( function( event ){
    $( '#tabla_alumno' ).empty();
    $( '#tabla_escuela' ).empty();
    $( '#tabla_horario' ).empty();
    $( '#cargar' ).prop( 'disabled', true );
    $( '#ocultar' ).prop( 'disabled', true );
  });
  buscarAlumno();
  selectorAlumno();
  selectorEscuela();
  selectorHorario();
  selectorCalificacion();
}

function buscarAlumno(){
  $( '#formulario_alumno' ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      document.getElementById( "buscar_alumno" ).addEventListener( 'keypress', function( event ){
        if( event.keyCode === 13 ){
          $.ajax({
            method: "post",
            url: "./../php/busqueda_personalizada.php",
            data: { referencia: document.getElementById( "buscar_alumno" ).value },
            cache: false,
            success: function( resp ){
              $( '#tabla_alumno' ).empty();
              $( '#tabla_alumno' ).html( resp );
            }
          });
        }
      });
    }
  });
}

function selectorAlumno(){
  $( '#selector_alumno' ).change( function( event ){
    event.preventDefault();
    var filtrado = document.getElementById( "selector_alumno" ).value;
    if( filtrado !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tablas.php",
        data: { query: "query_alumno", filtrado_1: filtrado, filtrado_2: "" },
        cache: false,
        success: function( resp ){
          $( '#tabla_alumno' ).empty();
          $( '#tabla_alumno' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
}

function selectorEscuela(){
  $( '#selector_escuela' ).change( function( event ){
    event.preventDefault();
    var filtrado = document.getElementById( "selector_escuela" ).value;
    if( filtrado !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tablas.php",
        data: { query: "query_escuela", filtrado_1: filtrado, filtrado_2: "" },
        cache: false,
        success: function( resp ){
          $( '#tabla_escuela' ).empty();
          $( '#tabla_escuela' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
}

function selectorHorario(){
  $( '#selector_salon' ).change( function( event ){
  });
  $( '#selector_horario' ).change( function( event ){
    event.preventDefault();
    var laboratorio = document.getElementById( "selector_salon" ).value;
    var horario = document.getElementById( "selector_horario" ).value;
    if( horario !== "" && laboratorio !== "" ){
      $.ajax({
        method: "post",
        url: "./../php/tablas.php",
        data: { query: "query_horario", filtrado_1: laboratorio, filtrado_2: horario },
        cache: false,
        success: function( resp ){
          $( '#tabla_horario' ).empty();
          $( '#tabla_horario' ).html( resp );
          $( '#cargar' ).prop( 'disabled', false );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      });
    }
  });
}

function selectorCalificacion(){
  $( '#tab_calificacion' ).click( function( event ){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "./../php/tablas.php",
      data: { query: "query_calificacion", filtrado_1: "", filtrado_2: "" },
      cache: false,
      success: function( resp ){
        $( '#tabla_calificacion' ).empty();
        $( '#tabla_calificacion' ).html( resp );
        $( '#cargar' ).prop( 'disabled', false );
        $( '#ocultar' ).prop( 'disabled', false );
      }
    });
  });
}
