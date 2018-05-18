<?php
  require("conexionBD.php");
  $conector = new Conector("root","root","localhost","jsons");
  $conector->conectar();
  $conector->query("select * from dispositivos");
?>
