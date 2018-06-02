<?php
  require( "DB_Manager.php" );

  $query = "SELECT NoReferencia, Nombre, Ap1, Ap2, Edad, CURP FROM alumno ORDER BY Nombre";
  $res = $mysqli->query( $query );
  $html = "";
  while( $fila = $res->fetch_assoc() ){
    $html.="<tr>
            <td>$fila[NoReferencia]</td>
            <td>$fila[Nombre]</td>
            <td>$fila[Ap1]</td>
            <td>$fila[Ap2]</td>
            <td>$fila[Edad]</td>
            <td>$fila[CURP]</td>
            </tr>";
  }
?>
