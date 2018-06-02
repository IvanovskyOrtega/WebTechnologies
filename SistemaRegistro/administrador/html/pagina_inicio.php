<?php
  require( "../../php/tabla_alumno.php" );
?>

<html>
  <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge, chrome=1">
    <meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title> Administradores </title>
    <link href = "../../css/materialize/materialize.css" rel = "stylesheet">
    <link href = "../../css/fontawesome/css/fontawesome-all.min.css" rel = "stylesheet">
  </head>

  <body style = "text-align: justify;">
    <section id = "encabezado">
      <nav>
        <div class = "nav-wrapper light-blue darken-4">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href = "#" class = "brand-logo left hide-on-med-and-down"><i class = "fas fa-users-cog fa-lg"></i> Sistema de administraci&oacute;n </a>
          <a href = "#" class = "brand-logo center hide-on-large-only"> Administraci&oacute;n </a>
          <ul class="right">
            <li><a href = ""><i class = "fas fa-sign-out-alt"></i></a></li>
          </ul>
        </div>
      </nav>
      <div class="parallax-container">
        <div class = "parallax"><img src = "../../media/escom.jpg" class = "responsive-img"></div>
      </div>
    </section>

    <section id = "contenidos">
      <div class = "container">
        <div class = "row">
          <div class = "col l12 m12 s12">
            <h4> Filtrado de informaci&oacute;n&#58; </h4>
            <div class = "divider"></div>
            <div style="clear:both; margin:5%" > </div>
          </div>


          <div class="row">
            <div class="col l12 m12 s12">
              <ul class = "tabs">
                <li class = "tab col s3"><a href = "#alumno_inf"> Por alumno </a></li>
                <li class = "tab col s3"><a href = "#escuela_inf"> Por escuela </a></li>
                <li class = "tab col s3"><a href = "#horario_inf"> Por horario </a></li>
                <li class = "tab col s3"><a href = "#calificacion_inf"> Por calificaci&oacute;n </a></li>
              </ul>
            </div>
            <div style="clear:both; margin:5%" > </div>
            <div id = "alumno_inf" class = "col l12 m12 s12">

              <table class = "striped responsive-table">
                <thead>
                  <tr>
                    <th> N&uacute;mero de referencia </th>
                    <th> Nombre&#40;s&#41; </th>
                    <th> Apellido paterno </th>
                    <th> Apellido materno </th>
                    <th> CURP </th>
                  </tr>
                </thead>
                <tbody class = "contenido_alumno">
                  <?php
                    echo( $html );
                  ?>
                </tbody>
              </table>

              <div style="clear:both; margin:5%" > </div>
              <div class = "col l6 m12 s12">
                <button id = "cargar" class = "col l12 m12 s12 btn light-blue darken-4 waves-effect"> Cargar m&aacute;s informaci&oacute;n </button>
              </div>
              <div class = "col l6 m12 s12">
                <button id = "ocultar" type = "reset" class = "col l12 m12 s12 btn grey waves-effect"> Ocultar informaci&oacute;n </button>
              </div>
            </div>

            <div id = "escuela_inf" class = "col s12">

              <div style="clear:both; margin:5%" > </div>
              <div class = "col l6 m12 s12">
                <button id = "cargar" class = "col l12 m12 s12 btn light-blue darken-4 waves-effect"> Cargar m&aacute;s informaci&oacute;n </button>
              </div>
              <div class = "col l6 m12 s12">
                <button id = "ocultar" type = "reset" class = "col l12 m12 s12 btn grey waves-effect"> Ocultar informaci&oacute;n </button>
              </div>
            </div>

            <div id = "horario_inf" class = "col s12">

              <div style="clear:both; margin:5%" > </div>
              <div class = "col l6 m12 s12">
                <button id = "cargar" class = "col l12 m12 s12 btn light-blue darken-4 waves-effect"> Cargar m&aacute;s informaci&oacute;n </button>
              </div>
              <div class = "col l6 m12 s12">
                <button id = "ocultar" type = "reset" class = "col l12 m12 s12 btn grey waves-effect"> Ocultar informaci&oacute;n </button>
              </div>
            </div>

            <div id = "calificacion_inf" class = "col s12">

              <div style="clear:both; margin:5%" > </div>
              <div class = "col l6 m12 s12">
                <button id = "cargar" class = "col l12 m12 s12 btn light-blue darken-4 waves-effect"> Cargar m&aacute;s informaci&oacute;n </button>
              </div>
              <div class = "col l6 m12 s12">
                <button id = "ocultar" type = "reset" class = "col l12 m12 s12 btn grey waves-effect"> Ocultar informaci&oacute;n </button>
              </div>
            </div>

          </div>
        </div>

        <div class = "row">
          <div class = "col l12 m12 s12">
            <h4> Descarga de reportes&#58; </h4>
            <div class = "divider"></div>
            <div style="clear:both; margin:5%" > </div>
          </div>

          <div class = "col l12 m12 s12">
            <div class = "col l6 m6 s12">
              <div class = "card">
                <div class = "card-content">
                  <div class = "col l12 m12 s12 center-align">
                    <i class = "fas fa-file-alt fa-10x"></i>
                    <div style="clear:both; margin:5%" > </div>
                  </div>
                  <h4 class = "l12 m12 s12 center-align"> Aciertos obtenidos </h4>
                  <p> Reporte en formato PDF en el cual se enlista a los alumnos dado el n&uacute;mero de aciertos
                  obtenidos en su examen&#46; </p>
                </div>
                <div class = "card-action right-align hide-on-small-only">
                  <a href = "../../reportes/num_aciertos.php"> Para descargar da click aqu&iacute; <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
                <div class = "card-action right-align hide-on-med-and-up">
                  <a href = "#"> Descargar <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
              </div>
            </div>

            <div class = "col l6 m6 s12">
              <div class = "card">
                <div class = "card-content">
                  <div class = "col l12 m12 s12 center-align">
                    <i class = "fas fa-file-alt fa-10x"></i>
                    <div style="clear:both; margin:5%" > </div>
                  </div>
                  <h4 class = "l12 m12 s12 center-align"> Esc&#46; de procedencia </h4>
                  <p> Reporte en formato PDF en el cual se enlista a los alumnos dados el promedio de aciertos obtenidos por su
                  escuela de procedencia&#46; </p>
                </div>
                <div class = "card-action right-align hide-on-small-only">
                  <a href = "../../reportes/prom_escuela.php"> Para descargar da click aqu&iacute; <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
                <div class = "card-action right-align hide-on-med-and-up">
                  <a href = "#"> Descargar <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
              </div>
            </div>

            <div class = "col l6 m6 s12">
              <div class = "card">
                <div class = "card-content">
                  <div class = "col l12 m12 s12 center-align">
                    <i class = "fas fa-file-alt fa-10x"></i>
                    <div style="clear:both; margin:5%" > </div>
                  </div>
                  <h4 class = "l12 m12 s12 center-align"> Lugar de residencia </h4>
                  <p> Reporte en formato PDF en el cual se enlista a los alumnos dados el municipio en el que reciden&#46;</p>
                </div>
                <div class = "card-action right-align hide-on-small-only">
                  <a href = "../../reportes/alum_mun.php"> Para descargar da click aqu&iacute; <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
                <div class = "card-action right-align hide-on-med-and-up">
                  <a href = "#"> Descargar <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
              </div>
            </div>

            <div class = "col l6 m6 s12">
              <div class = "card">
                <div class = "card-content">
                  <div class = "col l12 m12 s12 center-align">
                    <i class = "fas fa-file-alt fa-10x"></i>
                    <div style="clear:both; margin:5%" > </div>
                  </div>
                  <h4 class = "l12 m12 s12 center-align"> Edad y sexo </h4>
                  <p> Reporte en formato PDF en el cual se enlista a los alumnos dados su edad y su genero&#46; </p>
                </div>
                <div class = "card-action right-align hide-on-small-only">
                  <a href = "../../reportes/alum_edad.php"> Para descargar da click aqu&iacute; <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
                <div class = "card-action right-align hide-on-med-and-up">
                  <a href = "#"> Descargar <i class = "fas fa-arrow-circle-right"></i> </a>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

    <section id = "pie">
    </section>
  </body>

  <script src = "../../js/jquery/jquery-3.3.1.min.js"></script>
  <script src = "../../js/materialize/materialize.js"></script>
  <script src = "../js/pagina_inicio_admon.js"></script>
</html>
