<?php
  require("../../php/DB_Manager.php");

  $referencia = $_POST[ "referencia" ];
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $curp = $_POST[ "curp" ];
  $contrasena = $_POST[ "contrasena" ];
  $escuela_procedencia = $_POST[ "escuela" ];
  $genero = $_POST[ "genero" ];
  $email = $_POST[ "email" ];
  $telefono_celular = $_POST[ "telefono_celular" ];
  $telefono_casa = $_POST[ "telefono_casa" ];
  $direccion = $_POST[ "direccion_actual" ];
  $numero_opcion = $_POST[ "numero_opcion" ];
  $promedio = $_POST[ "promedio" ];
  $hora_examen = $_POST['hora_examen'];
  $laboratorio = $_POST['laboratorio'];
  $aciertos = $_POST['aciertos'];
  $original = $_POST['ref_original'];

  echo update_alumno(connect(), $original, $referencia, $nombre, $apellidoP, $apellidoM, $genero, $contrasena, $curp, $email, $telefono_celular, $telefono_casa, $direccion, $escuela_procedencia, $promedio, $opcion, $hora_examen, $laboratorio, $aciertos);
?>
