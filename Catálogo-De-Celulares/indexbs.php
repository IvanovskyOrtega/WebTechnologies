<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cat&aacute;logo de Celulares</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
    <link rel="stylesheet" href="./css/indexbs.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js"></script>
    <script src="./js/jquery.shuffle.min.js"></script>
    <script src="./js/indexbs.js"></script>

  </head>
  <body>

    <section class="header">
      <header>

        <nav class="navbar fixed-topo" role="navigation">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
          </button>
          <a class="navbar-brand text-white mx-auto text-center"  href="./indexbs.php"><i class="fas fa-mobile-alt"></i> Cat&aacute;logo de celulares</a>
          <div class="collapse navbar-collapse w-100" id="navbarToggler">
            <ul class="nav navbar-nav mr-auto d-block w-100">
                <li class="nav-item">
                <form class="form-inline">
                  <input id="campo-busqueda" class="form-control js-shuffle-search" type="search" placeholder="Buscar" aria-label="¿Qu&eacute; est&aacute;s buscando?">
                </form></li>
            </ul>
          </div>
        </nav>
      </header>
    </section>

    <section class="content">
      <div class="container">
        <div id="mensaje"></div>
          <div class="btn-toolbar mx-auto d-block text-center w-100">
            <div class="gallery-sorting list-inline btn-group mr-2" role="groups" aria-label="First group">
                <button type="button" data-groups="all" class="btn btn-secondary active">*</button>
            </div>
          </div>
        <ul class="dispositivos gallery-items list-unstyled" id="grid">
          <li class='col-lg-3 col-md-4 col-sm-6 col-12 shuffle_sizer'></li>
        </ul>
      </div>
      <div class="modals"></div>
    </section>

    <section class="footer">
      <footer class="page-footer font-small pt-4 mt-4">
        <div class="footer-copyright text-center bg-danger text-white py-3">
          &copy; 2018 Tecnolog&iacute;as para la Web ESCOM
        </div>

      </footer>
    </section>

  </body>
</html>
