<?php
  require( "DB_Manager.php" );

  $query = "SELECT NoReferencia, Nombre, Ap1, Ap2, CURP FROM Alumno ORDER BY Nombre";
  $res = mysqli_query(connect(), $query);
  $html = "";
  while( $fila = mysqli_fetch_assoc($res) ){
    $html.="<tr>
            <td>$fila[NoReferencia]</td>
            <td>$fila[Nombre]</td>
            <td>$fila[Ap1]</td>
            <td>$fila[Ap2]</td>
            <td>$fila[CURP]</td>
            </tr>";
  }
?>
