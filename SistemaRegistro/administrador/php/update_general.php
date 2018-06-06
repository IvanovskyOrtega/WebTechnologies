<?php
  require("../../php/DB_Manager.php");

  $referencia = $_POST[ "referencia" ];
  $nombre = $_POST[ "nombre" ];
  $apellidoP = $_POST[ "apellidoP" ];
  $apellidoM = $_POST[ "apellidoM" ];
  $curp = $_POST[ "curp" ];
  $contrasena = $_POST[ "contrasena" ];
  $escuela_procedencia = $_POST[ "escuela" ];
  $fecha_nacimiento = $_POST[ "fecha_nacimiento" ];
  $genero = $_POST[ "genero" ];
  $email = $_POST[ "email" ];
  $telefono_celular = $_POST[ "telefono_celular" ];
  $telefono_casa = $_POST[ "telefono_casa" ];
  $direccion_estado = $_POST[ "estado_reside" ];
  $direccion_municipio = $_POST[ "municipio_reside" ];
  $direccion = $_POST[ "direccion_actual" ];
  $numero_opcion = $_POST[ "numero_opcion" ];
  $promedio = $_POST[ "promedio" ];
  $nacionalidad_pais = $_POST[ "pais_nacimiento" ];
  $nacionalidad_estado = $_POST[ "estado_nacimiento" ];
  $hora_examen = $_POST['hora_examen'];
  $laboratorio = $_POST['laboratorio'];
  $aciertos = $_POST['aciertos'];
  $original = $_POST['ref_original'];

  echo update_alumno(connect(), $original, $referencia, $nombre, $apellidoP, $apellidoM, $genero, $contrasena, $nacionalidad_pais, $nacionalidad_estado, $fecha_nacimiento, $curp, $email, $telefono_celular, $telefono_casa, $direccion_estado, $direccion_municipio, $direccion, $escuela_procedencia, $promedio, $opcion, $hora_examen, $laboratorio, $aciertos);
?>