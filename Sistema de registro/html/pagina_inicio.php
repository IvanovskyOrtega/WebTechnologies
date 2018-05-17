<html>
  <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge, chrome=1">
    <meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title> Inicio alumno </title>
    <link href = "./../css/materialize/materialize.min.css" rel = "stylesheet">
    <link href = "./../css/fontawesome/css/fontawesome-all.min.css" rel = "stylesheet">
  </head>

  <body>
    <section id = "encabezado">

      <ul id = "menu_sesion" class = "dropdown-content">
        <li><a href = "./../index.php"> Cerrar sesion </a></li>
      </ul>
      <nav>
        <ul href="#" data-target="slide-out" class="sidenav-trigger">
          <i class="fas fa-bars"></i></a>
        </ul>
        <div class = "nav-wrapper blue darken-2">
          <a href = "#" class = "brand-logo center"><i class = "fas fa-graduation-cap hide-on-small-only"></i> ESCOM </a>
          <ul class="right hide-on-med-and-down">
            <li><a class = "dropdown-trigger" href = "#!" data-target = "menu_sesion"><i class = "fas fa-ellipsis-v"></i></a></li>
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
          <li><a class = "waves-effect"> Datos alumno </a></li>
          <li><a class = "waves-effect"> Informaci&oacute;n examen </a></li>
          <li><a class = "waves-effect"> Descargas </a></li>
        </ul>


    </section>

    <section id = "contenidos">
    </section>

    <section id = "pie">
    </section>
  </body>

  <script src = "./../js/jquery/jquery-3.3.1.min.js"></script>
  <script src = "./../js/materialize/materialize.min.js"></script>
  <script src = "./../js/pagina_inicio.js"></script>
</html>
