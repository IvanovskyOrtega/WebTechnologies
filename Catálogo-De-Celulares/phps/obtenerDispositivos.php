<?php
  require("conexionBD.php");
  // Aqui cambien dependiendo como tengan su usuario y pass :v
  $conector = new Conector("root","root","localhost","jsons");
  $conector->conectar();
  $conector->query("select * from dispositivos");
?>
