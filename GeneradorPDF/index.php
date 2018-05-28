<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Generador</title>
   

</head>
<body  background = "./imgs/background.png">
    <div style = "clear: both; margin: 8%"> </div>
    <div class="container">
        <div class="section">
            <h5 class="white-text">Generar PDF</h5>
            <p class="white-text">Se generara el pdf a partir de su ID</p>
        </div>
        <div class ="row"> 
            <form action="php/generar.php" id="form1" method="POST">
                <div class="input-field col s6">
                    <input placeholder="Ingrese su ID" name="idprofesor" id="idprofesor" type="text" class="validate white-text">
                    <label class="white-text"for="first_name">ID Profesor</label>
                </div>
                <div class ="col s6">
                <button class="btn waves-effect waves-light" type="submit" target="_blank" name="generar">Generar
                    <i class="material-icons right">send</i>
                </button>
                </div>
            </form>
        </div>
        
    </div>
    <script type = "text/javascript" src="js/materialize.min.js"></script>
</body> 
</html>