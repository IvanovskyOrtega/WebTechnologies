<?php
  require("../../php/DB_Manager.php");
  $username = $_POST[ "username" ];
  $contrasena = $_POST[ "contrasena" ];
  echo loginAdm($username, $contrasena);
?>
