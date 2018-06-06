$( document ).ready( onReady );

let noReferencia = "";

let validaciones = {
  regExp: {
    reReferencia: {
      pattern: /^P(P|E)[0-9]+$/i,
      errorMessage: "El numero de referencia debe tener el siguiente formato: PP + 8 digitos o PE + 8 digitos"
    },
    reCURP: {
      pattern: /^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$/i,
      errorMessage: "Ingresa una CURP valida"
    },
    reCaracteres: {
      pattern: /^[\wáéíóú]+$/i,
      errorMessage: "Este campo solo admite letras"
    },
    reEmail: {
      pattern: /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i,
      errorMessage: "Email invalido"
    }
  }
}

function onReady(){
  $( '.parallax' ).parallax();
  $( 'select' ).formSelect();
  $( '.modal' ).modal();
  $( '.tabs' ).tabs();
  $( '.tabs' ).click( function( event ){
    $( '#tabla_alumno' ).empty();
    $( '#tabla_escuela' ).empty();
    $( '#tabla_horario' ).empty();
    $( '#actualizar' ).prop( 'disabled', true );
    $( '#eliminar' ).prop( 'disabled', true );
    $( '#ocultar' ).prop( 'disabled', true );
  });
  $( '#actualizar' ).click( function( event ){
    let noReferencias = actualizarAlumno( event ).split( " " );
    if( noReferencias.length - 1 > 0 ){
      for( let i = 0 ; i < noReferencias.length - 1; i++ ){
        let noReferencia_original = noReferencias[ i ];
        event.preventDefault();
        $.ajax({
          method: "post",
          url: "./../php/actualizar_general.php",
          data: { referencia: noReferencia_original },
          cache: false,
          success: function( resp ){
            if( resp != -1 ){
              $( '#modal_actualizar_alumno' ).modal( 'open' );
              $( '#actualizar_general' ).html( resp );
            }else{
              $( '#modal_actualizar_alumno' ).closeModal();
            }
          }
        });
      }
    }else{
      swal({
        title: "Lo sentimos...",
        text: "Selecciona primero al alumno que desea actualizar.",
        icon: "error"
      });
    }
  });
  $( '#eliminar' ).click( function( event ){
    swal({
      title: "¡CUIDADO!",
      text: "Una vez que elimines al alumno no podras recuperar sus datos, ¿Aun así deseas continuar?",
      icon: "warning",
      buttons: ["Cancelar", "Continuar"],
      dangerMode: true,
    })
    .then( ( willDelete ) => {
      if( willDelete ) {
        eliminarAlumno( event );
        if( document.getElementById( 0 ) == null ){
          $( '#tabla_alumno' ).empty();
          $( '#actualizar' ).prop( 'disabled', true );
          $( '#eliminar' ).prop( 'disabled', true );
          $( '#ocultar' ).prop( 'disabled', true );
        }
        swal( "Alumno(s) eliminado(s) de la base de datos.", {
          icon: "success",
        });
      }
    });
  });
  $( '#ocultar' ).click( function(){
    $( '#tabla_alumno' ).empty();
    $( '#tabla_escuela' ).empty();
    $( '#tabla_horario' ).empty();
    $( '#tabla_calificacion' ).empty();
    $( '#actualizar' ).prop( 'disabled', true );
    $( '#eliminar' ).prop( 'disabled', true );
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
              if( resp != -1 ){
                $( '#tabla_alumno' ).empty();
                $( '#tabla_alumno' ).html( resp );
                $( '#actualizar' ).prop( 'disabled', false );
                $( '#eliminar' ).prop( 'disabled', false );
                $( '#ocultar' ).prop( 'disabled', false );
              }else{
                swal({
                  title: "Lo sentimos...",
                  text: "El alumno que buscas no existe.",
                  icon: "error"
                });
              }
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
          if( resp != -1 ){
            $( '#tabla_alumno' ).empty();
            $( '#tabla_alumno' ).html( resp );
            $( '#actualizar' ).prop( 'disabled', false );
            $( '#eliminar' ).prop( 'disabled', false );
            $( '#ocultar' ).prop( 'disabled', false );
          }else{
            swal({
              title: "Lo sentimos...",
              text: "Aun no hay alumnos registrados.",
              icon: "error"
            });
          }
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
          if( resp != -1 ){
            $( '#tabla_escuela' ).empty();
            $( '#tabla_escuela' ).html( resp );
            $( '#ocultar' ).prop( 'disabled', false );
          }else{
            swal({
              title: "Lo sentimos...",
              text: "Aun no hay alumnos registrados egresados del " + filtrado + ".",
              icon: "error"
            });
          }
        }
      });
    }
  });
}

function selectorHorario(){
  $( '#selector_salon' ).change( function( event ){});
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
          if( resp != -1 ){
            $( '#tabla_horario' ).empty();
            $( '#tabla_horario' ).html( resp );
            $( '#ocultar' ).prop( 'disabled', false );
          }else{
            swal({
              title: "Lo sentimos...",
              text: "Aun no hay alumnos asignados en el laboratorio " + laboratorio + " en el horario de las " + horario.split( " " )[ 1 ] + ".",
              icon: "error"
            });
          }
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
        if( resp != -1 ){
          $( '#tabla_calificacion' ).empty();
          $( '#tabla_calificacion' ).html( resp );
          $( '#ocultar' ).prop( 'disabled', false );
        }
      }
    });
  });
}

function actualizarAlumno( event ){
  let noReferencias = "";
  let tbody = document.getElementById( 'contenido_alumno' );
  for( i = tbody.getElementsByTagName( 'input' ).length - 1; i >= 0; i-- ){
    let seleccionado = tbody.getElementsByTagName( 'input' )[ i ];
    if( seleccionado.checked ){
      noReferencias += document.getElementById( i ).innerHTML.replace( /\s/g, "" ).substring( 4, 14 ) + " ";
    }
  }
  return noReferencias;
}

function eliminarAlumno( event ) {
  tbody = document.getElementById( 'contenido_alumno' );
  for( i = tbody.getElementsByTagName( 'input' ).length - 1; i >= 0; i-- ){
    seleccionado = tbody.getElementsByTagName( 'input' )[ i ];
    if( seleccionado.checked ){
      noReferencia = document.getElementById( i ).innerHTML.replace( /\s/g, "" ).substring( 4, 14 );
      event.preventDefault();
      $.ajax({
        method: "post",
        url: "./../php/eliminar_alumno.php",
        data: { referencia: noReferencia },
        cache: false,
        success: function( resp ){
          if( resp == 0 ){
            $( '#tabla_alumno' ).empty();
            $( '#actualizar' ).prop( 'disabled', true );
            $( '#eliminar' ).prop( 'disabled', true );
            $( '#ocultar' ).prop( 'disabled', true );
          }
        }
      });
      for( j = 0; j <= tbody.getElementsByTagName( 'input' ).length - 1; j++ ){
        if( j === i ){
          document.getElementById( i ).remove();
          if( document.getElementById( i + 1 ) != null ){
            document.getElementById( i + 1 ).id = j;
          }
        }else if( j >= i ){
          document.getElementById( j + 1 ).id = j;
        }else{
          document.getElementById( j ).id = j;
        }
      }
    }
  }
}
