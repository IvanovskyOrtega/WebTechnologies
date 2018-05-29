<?php
  require("DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $direccion = $_POST[ "direccion" ];
  $email = $_POST[ "email" ];
  $curp = $_POST[ "curp" ];
  $foto = "./".$referencia.".png";
  $telefono = $_POST[ "telefono" ];
  $contrasena = $_POST[ "contrasena" ];
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $lugar_nacimiento = $_POST[ "lugar_nacimiento" ];
  $fecha_nacimiento = $_POST[ "fecha_nacimiento" ];
  $edad = $_POST[ "edad" ];
  $promedio = $_POST[ "promedio" ];
  $genero = $_POST[ "genero" ];
  echo create_account( $referencia, $nombre, $apellidoP, $apellidoM, $genero, $curp, $foto, $contrasena, $direccion, "Gustavo A. Madero", "Ciudad de México", $telefono, "5551113333", $email, $escuela_procedencia, $promedio, 1, $fecha_nacimiento, "México", $lugar_nacimiento);
?>
