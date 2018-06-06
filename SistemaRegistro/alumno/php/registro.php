<?php
  require("classUpload.php");
  require("../../php/DB_Manager.php");
  $uploader = new Uploader();
  $uploader->config(1000000,"jpg");
  $referencia = $_POST[ "referencia" ];
  $nombre = html_entity_encode($_POST[ "nombre" ]);
  $apellidoP = html_entity_encode($_POST[ "apellidoP" ]);
  $apellidoM = html_entity_encode($_POST[ "apellidoM" ]);
  $curp = $_POST[ "curp" ];
  $foto = "./../../media/".$referencia.".jpg";
  $contrasena = html_entity_encode($_POST[ "contrasena" ]);
  $escuela_procedencia = $_POST[ "escuela_procedencia" ];
  $fecha_nacimiento = $_POST[ "fecha_nacimiento" ];
  $genero = $_POST[ "genero" ];
  $email = html_entity_encode($_POST[ "email" ]);
  $telefono_celular = $_POST[ "telefono_celular" ];
  $telefono_casa = $_POST[ "telefono_casa" ];
  $direccion_estado = html_entity_encode($_POST[ "direccion_estado" ]);
  $direccion_municipio = html_entity_encode($_POST[ "direccion_municipio" ]);
  $direccion = html_entity_encode($_POST[ "direccion_actual" ]);
  $numero_opcion = $_POST[ "numero_opcion" ];
  $promedio = $_POST[ "promedio" ];
  $nacionalidad_pais = html_entity_encode($_POST[ "nacionalidad_pais" ]);
  $nacionalidad_estado = html_entity_encode($_POST[ "nacionalidad_estado" ]);
  $uploader->upload($referencia,"./../../media/",$referencia);
  echo create_account( $referencia, $nombre, $apellidoP, $apellidoM, $genero, $curp, $foto, $contrasena, $direccion, $direccion_municipio, $direccion_estado, $telefono_celular, $telefono_casa, $email, $escuela_procedencia, $promedio, $numero_opcion, $fecha_nacimiento, $nacionalidad_pais, $nacionalidad_estado);
?>
