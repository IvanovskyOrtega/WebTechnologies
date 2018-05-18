<?php
  require("DB_Manager.php");
  $referencia = $_POST[ "referencia" ];
  $contrasena = $_POST[ "contrasena" ];
  /*$con = mysqli_connect("localhost", "root", "", "diagnostico");
  $sql = "SELECT * FROM Alumno WHERE NoReferencia='$referencia' AND Password='$contrasena'";
  $res = mysqli_query($con, $sql);
  echo(mysqli_num_rows($res) == 1);*/
  echo(login($referencia, $contrasena));
?>
