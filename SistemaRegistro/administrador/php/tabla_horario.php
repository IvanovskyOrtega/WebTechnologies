<?php
  require( "DB_Manager.php" );

  $laboratorio = $_POST[ 'laboratorio' ];
  $horario = $_POST[ 'horario' ];
  $query = "SELECT NoReferencia, Horario, Laboratorio FROM Examen WHERE Laboratorio = '$laboratorio' AND Horario = '$horario' ORDER BY NoReferencia";
  $res = $mysqli->query( $query );
  $html = "<table class = 'striped responsive-table'>
           <thead><tr>
           <th> N&uacute;mero de referencia </th>
           <th> Laboratorio </th>
           <th> Horario </th></tr>
           </thead>
           <tbody class = 'contenido_alumno'>";
  while( $fila = $res->fetch_assoc() ){
    $html.="<tr>
            <td>$fila[NoReferencia]</td>
            <td>$fila[Laboratorio]</td>
            <td>$fila[Horario]</td>
            </tr>";
  }
  $html.="</tbody></table>";
  echo( $html );
?>
