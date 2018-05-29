$( document ).ready( onReady );

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
      pattern: /^[A-Za-z]+\s?[A-Za-z]+$/i,
      errorMessage: "Este campo solo admite letras"
    },
    reEmail: {
      pattern: /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i,
      errorMessage: "Email invalido"
    }
  }
}

function onReady() {
  promedioSlider();
  edadSlider();
  $( "select" ).formSelect();
  $( ".datepicker" ).datepicker();
  $( "#direccion_estado" ).change( function () {
    $( "#direccion_estado option:selected" ).each( function () {
      id_estado = $( this ).val();
      $.ajax({
        method: "post",
        url: "./../php/MexicoEstadosMunicipios/municipios.php",
        data: { id_estado: id_estado },
        cache: false,
        success: function( resp ){
          $( "#direccion_municipio" ).html( resp );
          $( "#direccion_municipio" ).formSelect();
        }
      });
    });
  });
  $( "#nacionalidad_pais" ).change( function () {
    $( "#nacionalidad_pais option:selected" ).each( function () {
      id_pais = $( this ).val();
      $.ajax({
        method: "post",
        url: "./../php/PaisesEstados/estados.php",
        data: { id_pais: id_pais },
        cache: false,
        success: function( resp ){
          $( "#nacionalidad_estado" ).html( resp );
          $( "#nacionalidad_estado" ).formSelect();
        }
      });
    });
  });
  $( "#registro_formulario" ).validetta({
    validators: validaciones,
    bubblePosition: "bottom",
    bubbleGapTop: 10,
    bubbleGapLeft: -5,
    onValid: function( event ){
      event.preventDefault();
      data = crearObjetoSerializable( event );
      $.ajax({
        method: "post",
        url: "./../php/registro.php",
        data: data,
        cache: false,
        success: function( resp ){
          if (resp) {
            window.location.replace( "./pagina_inicio.php" );
          } else {
            alert("Se produjo un error :(");
          }
        }
      });
    }
  });
}

function crearObjetoSerializable( event ){
  let selectorUno, selectorDos, selectorTres, selectorCuatro, selectorCinco, selectorSeis, data;
  data = $( "#registro_formulario" ).serializeArray();
  selectorUno = document.getElementById( "escuela_procedencia" );
  selectorDos = document.getElementById( "numero_opcion" );
  selectorTres = document.getElementById( "direccion_estado" );
  selectorCuatro = document.getElementById( "direccion_municipio" );
  selectorCinco = document.getElementById( "nacionalidad_pais" );
  selectorSeis = document.getElementById( "nacionalidad_estado" );
  data.push(
    { name: "escuela_procedencia", value: selectorUno.options[ selectorUno.selectedIndex ].value },
    { name: "numero_opcion", value: selectorDos.options[ selectorDos.selectedIndex ].value },
    { name: "direccion_estado", value: selectorTres.options[ selectorTres.selectedIndex ].value },
    { name: "direccion_municipio", value: selectorCuatro.options[ selectorCuatro.selectedIndex ].value },
    { name: "nacionalidad_pais", value: selectorCinco.options[ selectorCinco.selectedIndex ].value },
    { name: "nacionalidad_estado", value: selectorSeis.options[ selectorSeis.selectedIndex ].value },
    { name: "fecha_nacimiento", value: $( "#fecha_nacimiento" ).datepicker().val() },
    { name: "edad", value: document.getElementById( 'edad-slider' ).noUiSlider.get() },
    { name: "promedio", value: document.getElementById( 'promedio-slider' ).noUiSlider.get() },
    { name: "genero", value: $( "#genero input[ name = 'grupo_radio' ]:checked" ).val() }
  );
  return data;
}

function promedioSlider(){
  let tapSlider = document.getElementById( 'promedio-slider' );
  let valor = document.getElementById( 'valor-2-slider' );
  noUiSlider.create( tapSlider, {
    start: 8,
    behaviour: 'tap',
    connect: [ true, false ],
    range: { 'min': 6, 'max': 10 }
  });
  tapSlider.noUiSlider.on( 'update', function( values, handle ) {
    valor.innerHTML = values[ handle ];
  });
}

function edadSlider(){
  let tapSlider = document.getElementById( 'edad-slider' );
  let valor = document.getElementById( 'valor-1-slider' );
  noUiSlider.create( tapSlider, {
    start: 18,
    behaviour: 'tap',
    connect: [ true, false ],
    range: { 'min': 15, 'max': 60 },
    format: {
      from: ( value ) => parseInt( value ),
      to: ( value ) => parseInt( value )
    }
  });
  tapSlider.noUiSlider.on( 'update', function( values, handle ) {
    valor.innerHTML = values[ handle ];
  });
}
