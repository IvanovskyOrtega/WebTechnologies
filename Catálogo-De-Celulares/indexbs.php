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
    <script src="./js/jquery.filterizr.min.js"></script>
    <script src="./js/indexbs.js"></script>

  </head>
  <body>

    <section class="header">
      <header>

        <nav class="navbar navbar-default fixed-top" role="navigation">
          <a class="navbar-brand text-white"  href="./indexbs.php"><i class="fas fa-mobile-alt"></i> Cat&aacute;logo de celulares</a>

          <form class="form-inline">
            <input id="campo-busqueda" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar"  data-search>
          </form>
        </nav>
      </header>
    </section>

    <section class="content">
      <div class="container">
        <div id="mensaje"></div>
        <div class="row filtr-container dispositivos">
        </div>
        <div class="row modals">
        </div>
      </div>
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
