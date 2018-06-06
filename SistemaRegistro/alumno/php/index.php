<?php
  require("../../php/DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
  $contrasena = $_POST[ "contrasena" ];
  echo login($referencia, $contrasena);
?>
