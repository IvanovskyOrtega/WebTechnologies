<html>
  <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge, chrome=1">
    <meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title> Datos personales </title>
    <link href = "./../css/materialize/materialize.css" rel = "stylesheet">
    <link href = "./../css/validetta/validetta.min.css" rel = "stylesheet">
    <link href = "./../css/fontawesome/css/fontawesome-all.min.css" rel = "stylesheet">
  </head>

  <body>
    <section id = "encabezado">
      <nav>
        <ul href="#" data-target="slide-out" class="sidenav-trigger">
          <i class="fas fa-bars hide-on-large-only"></i></a>
        </ul>
        <div class = "nav-wrapper blue-grey">
          <a href = "./pagina_inicio.php" class = "brand-logo center"><i class = "fas fa-graduation-cap hide-on-small-only"></i> ESCOM </a>
          <ul class="right">
            <li><a href = "./../index.php"><i class = "fas fa-sign-out-alt"></i></a></li>
          </ul>
        </div>
      </nav>
      <ul id="slide-out" class="sidenav">
        <li><div class="user-view">
          <div class="background">
            <img src="./../media/escom.jpg" class = "responsive-img"/>
          </div>
          <a href="#user"><img class="circle responsive-img" src="./../media/usuario.png"/></a>
          <a href="#name"><span class="white-text name"> Nombre usuario </span></a>
          <a href="#email"><span class="white-text email"> N&uacute;mero de referencia </span></a>
        </div></li>
        <li><p class = "center-align"><i class = "fas fa-graduation-cap"></i> Bienvenido </p></li>
        <li><div class="divider"></div></li>
        <li><a href = "./pagina_inicio.php" class = "waves-effect"> Inicio </a></li>
        <li><a href = "#" class = "waves-effect"> Datos personales </a></li>
      </ul>
    </section>

    <section id = "contenidos">
      <div class = "container">
        <div class = "row">
          <div class = "col l2 hide-on-med-and-down">
            <ul id="slide-out">
              <li><div>
                <a href="#user"><img class="circle responsive-img" src="./../media/usuario.png"/></a>
              </div></li>
              <div style="clear:both; margin:30px" > </div>
              <li><p class = "center-align"><i class = "fas fa-graduation-cap"></i> Bienvenido </p></li>
              <div style="clear:both; margin:30px" > </div>
              <li><div class="divider"></div></li>
              <div style="clear:both; margin:20px" > </div>
              <li> <i class = "fas fa-file"></i> <a href = "./pagina_inicio.php" class = "btn-flat waves-effect left-align"> Inicio </a></li>
              <li> <i class = "fas fa-user"></i> <a href = "#" class = "btn-flat waves-effect left-align"> Datos personales </a></li>
            </ul>
          </div>
          <div class = "row">
            <div class = "col l10 m12 s12">
              <h4 class = "blue-grey-text"> Datos del aspirante </h4>
              <div class = "divider"></div>
              <div class = "background grey lighten-4">
                <div class = "row">
                  <div class = "col l12 m12 s12">
                    <div style="clear:both; margin:5%" > </div>
                    <div class = "container">
                      <div class = "card">
                        <div class = "card-tabs">
                          <ul class = "tabs tabs-fixed-width grey lighten-3">
                            <li class = "tab"><a href = "#personales_tab" class = "blue-grey-text"> Personales </a></li>
                            <li class = "tab"><a href = "#academicos_tab" class = "blue-grey-text"> Acad&eacute;micos </a></li>
                            <li class = "tab"><a href = "#direccion_tab" class = "blue-grey-text"> Direcci&oacute;n </a></li>
                            <li class = "tab"><a href = "#contacto_tab" class = "blue-grey-text"> Contacto </a></li>
                          </ul>
                        </div>
                        <div class = "card-content">
                          <div class = "row" id = "personales_tab">
                            <form id = "datos_personales">
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "nombre" name = "nombre" value = "Aqui se recupera el nombre del aspirante."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "apellidoP" name = "apellidoP" value = "Aqui se recupera el apellido paterno."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "apellidoM" name = "apellidoM" value = "Aqui se recupera el apellido materno."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "curp" name = "curp" value = "Aqui se recupera el CURP."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "edad" name = "edad" value = "Aqui se recupera la edad."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "genero" name = "genero" value = "Aqui se recupera el genero."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "nacimiento" name = "nacimiento" value = "Aqui se recupera la fecha de nacimiento."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-key prefix"></i>
                                <label for = "contrasena"> Cambiar contrase&ntilde;a </label>
                                <input type = "password" id = "contrasena" name = "contrasena" maxlength = "16", data-validetta = "required,minLength[8],maxLength[16]"/>
                              </div>
                              <div class = "col l8 m12 s12 offset-l4 input-field">
                                <button type = "submit" class = "btn blue-grey waves-effect" style = "width:100%; margin-top: 10px;"> Actualizar </button>
                              </div>
                            </form>
                          </div>
                          <div class = "row" id = "academicos_tab">
                            <form id = "datos_academicos">
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fas fa-graduation-cap prefix"></i>
                                <label for = "carrera"> Ingenier&iacute;a en sistemas computacionales </label>
                                <input disabled type = "text" id = "carrera" name = "carrera"/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "referencia" name = "referencia" value = "Aqui se recupera el numero de referencia."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "escuela_procedencia" name = "escuela_procedencia" value = "Aqui se recupera la escuela de procedencia."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "promedio" name = "promedio" value = "Aqui se recupera el promedio."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-user-lock prefix"></i>
                                <input disabled type = "text" id = "opcion" name = "opcion" value = "Aqui se recupera el numero de opcion."/>
                              </div>
                            </form>
                          </div>
                          <div class = "row" id = "direccion_tab">
                            <form id = "datos_direccion">
                              <div class = "col l8 s12 offset-l4 input-field">
                                <label for = "direccion"> Direcci&oacute;n </label>
                                <input type = "text" id = "direccion" name = "direccion" data-validetta = "required"/>
                              </div>
                              <div class = "col l8 m12 s12 offset-l4 input-field">
                                <button type = "submit" class = "btn blue-grey waves-effect" style = "width:100%; margin-top: 10px;"> Actualizar </button>
                              </div>
                            </form>
                          </div>
                          <div class = "row" id = "contacto_tab">
                            <form id = "datos_contacto">
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "far fa-envelope prefix"></i>
                                <label for = "email"> Email </label>
                                <input type = "text" id = "email" name = "email" data-validetta = "required,maxLength[50],regExp[reEmail]" value = "Aqui se recupera el email."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-mobile-alt prefix"></i>
                                <label for = "telefono_celular"> Tel&eacute;fono celular: </label>
                                <input type = "text" id = "telefono_celular" name = "telefono_celular" maxlength = "10" data-validetta = "required,number,maxLength[10]" value = "Aqui se recupera el telefono celular."/>
                              </div>
                              <div class = "col l8 s12 offset-l4 input-field">
                                <i class = "fas fa-phone prefix"></i>
                                <label for = "telefono_casa"> Tel&eacute;fono de casa: </label>
                                <input type = "text" id = "telefono_casa" name = "telefono_casa" maxlength = "10" data-validetta = "required,number,maxLength[10]" value = "Aqui se recupera el telefono de casa."/>
                              </div>
                              <div class = "col l8 m12 s12 offset-l4 input-field">
                                <button type = "submit" class = "btn blue-grey waves-effect" style = "width:100%; margin-top: 10px;"> Actualizar </button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div style="clear:both; margin:5%" > </div>
                  </div>
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

  <script src = "./../js/jquery/jquery-3.3.1.min.js"></script>
  <script src = "./../js/materialize/materialize.min.js"></script>
  <script src = "./../js/validetta/validetta.min.js"></script>
  <script src = "./../js/validetta/localization/validettaLang-es-ES.js"></script>
  <script src = "./../js/datos_personales.js"></script>
</html>
