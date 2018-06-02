<?php
  require( "DB_Manager.php" );

  $filtrado = $_POST[ 'filtrado' ];
  $query = "SELECT NoReferencia, Escuela, Promedio, Opcion FROM Escolares WHERE Escuela = '$filtrado' ORDER BY promedio DESC";
  $res = $mysqli->query( $query );
  $html = "<table class = 'striped responsive-table'>
           <thead><tr>
           <th> N&uacute;mero de referencia </th>
           <th> Escuela </th>
           <th> Promedio </th>
           <th> Opci&oacute;n </th></tr>
           </thead>
           <tbody class = 'contenido_alumno'>";
  while( $fila = $res->fetch_assoc() ){
    $html.="<tr>
            <td>$fila[NoReferencia]</td>
            <td>$fila[Escuela]</td>
            <td>$fila[Promedio]</td>
            <td>$fila[Opcion]</td>
            </tr>";
  }
  $html.="</tbody></table>";
  echo( $html );
?>
