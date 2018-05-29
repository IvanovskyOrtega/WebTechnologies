<?php
<<<<<<< HEAD
  require("DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
||||||| merged common ancestors
  $referencia = $_POST[ "referencia" ];
=======
>>>>>>> 70f841e66f6c0bf9677820f6e563deef7cdb8a68
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $curp = $_POST[ "curp" ];
<<<<<<< HEAD
  $foto = "./".$referencia.".png";
  $telefono = $_POST[ "telefono" ];
||||||| merged common ancestors
  $telefono = $_POST[ "telefono" ];
=======
>>>>>>> 70f841e66f6c0bf9677820f6e563deef7cdb8a68
  $contrasena = $_POST[ "contrasena" ];
<<<<<<< HEAD
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $lugar_nacimiento = $_POST[ "lugar_nacimiento" ];
  $fecha_nacimiento = $_POST[ "fecha_nacimiento" ];
||||||| merged common ancestors
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $lugar_nacimiento = $_POST[ "lugar_nacimiento" ];
  $fecha_naciminto = $_POST[ "fecha_nacimiento" ];
=======
  $fecha_naciminto = $_POST[ "fecha_nacimiento" ];
  $genero = $_POST[ "genero" ];
>>>>>>> 70f841e66f6c0bf9677820f6e563deef7cdb8a68
  $edad = $_POST[ "edad" ];
  $email = $_POST[ "email" ];
  $telefono_celular = $_POST[ "telefono_celular" ];
  $telefono_casa = $_POST[ "telefono_casa" ];
  $direccion_estado = $_POST[ "direccion_estado" ];
  $direccion_municipio = $_POST[ "direccion_municipio" ];
  $direccion = $_POST[ "direccion_actual" ];
  $referencia = $_POST[ "referencia" ];
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $numero_opcion = $_POST[ "numero_opcion" ];
  $promedio = $_POST[ "promedio" ];
<<<<<<< HEAD
  $genero = $_POST[ "genero" ];
  echo create_account( $referencia, $nombre, $apellidoP, $apellidoM, $genero, $curp, $foto, $contrasena, $direccion, "Gustavo A. Madero", "Ciudad de México", $telefono, "5551113333", $email, $escuela_procedencia, $promedio, 1, $fecha_nacimiento, "México", $lugar_nacimiento);
||||||| merged common ancestors
  $genero = $_POST[ "genero" ];
  echo( $referencia." ".$nombre." ".$apellidoP." ".$apellidoM." ".$direccion." ".$email." ".$curp." ".$telefono." ".$contrasena." ".$escuela_procedencia." ".$lugar_nacimiento." ".$fecha_naciminto." ".$edad." ".$promedio." ".$genero );
=======
  $nacionalidad_pais = $_POST[ "nacionalidad_pais" ];
  $nacionalidad_estado = $_POST[ "nacionalidad_estado" ];

  //echo( $nombre." ".$apellidoP." ".$apellidoM." ".$curp." ".$contrasena." ".$fecha_naciminto." ".$genero." ".$edad." ".$email." ".$telefono_celular." ".$telefono_casa." ".$direccion_estado." ".$direccion_municipio." ".$direccion." ".$referencia." ".$escuela_procedencia." ".$numero_opcion." ".$promedio." ".$nacionalidad_pais." ".$nacionalidad_estado );
>>>>>>> 70f841e66f6c0bf9677820f6e563deef7cdb8a68
?>
