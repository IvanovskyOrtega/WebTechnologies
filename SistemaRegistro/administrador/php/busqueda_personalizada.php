<?php
  require( "DB_Manager.php" );

  $referencia = $_POST[ 'referencia' ];
  $query = "SELECT * FROM v1 WHERE ref = '$referencia'";
  $res = $mysqli->query( $query );
  $html = "<table class = 'striped responsive-table'>
           <thead><tr>
           <th> N&uacute;mero de referencia </th>
           <th> Nombre&#40;s&#41; </th>
           <th> Apellido paterno </th>
           <th> Apellido materno </th>
           <th> Escuela </th>
           <th> Promedio </th>
           <th> Horario del examen </th>
           <th> Laboratorio </th>
           <th> Aciertos </th>
           </tr></thead>
           <tbody class = 'contenido_alumno'>";
  while( $fila = $res->fetch_assoc() ){
    $html.="<tr>
            <td>$fila[ref]</td>
            <td>$fila[nom]</td>
            <td>$fila[ap1]</td>
            <td>$fila[ap2]</td>
            <td>$fila[esc]</td>
            <td>$fila[prom]</td>
            <td>$fila[hor]</td>
            <td>$fila[lab]</td>
            <td>$fila[ac]</td>
            </tr>";
  }
  $html.="</tbody></table>";
  echo( $html );
?>
