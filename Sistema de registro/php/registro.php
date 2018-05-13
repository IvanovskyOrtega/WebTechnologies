<?php
  $referencia = $_POST[ "referencia" ];
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $direccion = $_POST[ "direccion" ];
  $email = $_POST[ "email" ];
  $curp = $_POST[ "curp" ];
  $telefono = $_POST[ "telefono" ];
  $contrasena = $_POST[ "contrasena" ];
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $lugar_nacimiento = $_POST[ "lugar_nacimiento" ];
  $fecha_naciminto = $_POST[ "fecha_nacimiento" ];
  $edad = $_POST[ "edad" ];
  $promedio = $_POST[ "promedio" ];
  $genero = $_POST[ "genero" ];
  echo( $referencia." ".$nombre." ".$apellidoP." ".$apellidoM." ".$direccion." ".$email." ".$curp." ".$telefono." ".$contrasena." ".$escuela_procedencia." ".$lugar_nacimiento." ".$fecha_naciminto." ".$edad." ".$promedio." ".$genero );
?>
