<?php
  require("../../php/DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
  $contrasena = html_entity_encode($_POST[ "contrasena" ]);
  echo login($referencia, $contrasena);
?>
