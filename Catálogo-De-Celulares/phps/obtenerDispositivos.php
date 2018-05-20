<?php
  require("conexionBD.php");
  // Aqui cambien dependiendo como tengan su usuario y pass :v
  $conector = new Conector("root","root","localhost","jsons");
  $conector->conectar();
  $conector->query("SELECT *, JSON_EXTRACT(d, '$.nombre') AS nombre FROM dispositivos ORDER BY nombre ASC;");
?>
