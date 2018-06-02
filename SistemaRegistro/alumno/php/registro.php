<?php
  require("../../php/DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $curp = $_POST[ "curp" ];
  $foto = "./".$referencia.".png";
  $contrasena = $_POST[ "contrasena" ];
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $fecha_nacimiento = $_POST[ "fecha_nacimiento" ];
  $genero = $_POST[ "genero" ];
  $edad = $_POST[ "edad" ];
  $email = $_POST[ "email" ];
  $telefono_celular = $_POST[ "telefono_celular" ];
  $telefono_casa = $_POST[ "telefono_casa" ];
  $direccion_estado = $_POST[ "direccion_estado" ];
  $direccion_municipio = $_POST[ "direccion_municipio" ];
  $direccion = $_POST[ "direccion_actual" ];
  $numero_opcion = $_POST[ "numero_opcion" ];
  $promedio = $_POST[ "promedio" ];
  $nacionalidad_pais = $_POST[ "nacionalidad_pais" ];
  $nacionalidad_estado = $_POST[ "nacionalidad_estado" ];

  echo create_account( $referencia, $nombre, $apellidoP, $apellidoM, $edad, $genero, $curp, $foto, $contrasena, $direccion, $direccion_municipio, $direccion_estado, $telefono_celular, $telefono_casa
  , $email, $escuela_procedencia, $promedio, $numero_opcion, $fecha_nacimiento, $nacionalidad_pais, $nacionalidad_estado);
?>
