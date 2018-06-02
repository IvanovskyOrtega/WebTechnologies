<?php
  require( "DB_Manager.php" );

  $referencia = $_POST[ 'referencia' ];
  $query = "SELECT NoReferencia, Nombre, Ap1, Ap2, Edad, CURP FROM Alumno WHERE NoReferencia = '$referencia'";
  $res = $mysqli->query( $query );
  $html = "<table class = 'striped responsive-table'>
           <thead><tr>
           <th> N&uacute;mero de referencia </th>
           <th> Nombre&#40;s&#41; </th>
           <th> Apellido paterno </th>
           <th> Apellido materno </th>
           <th> Edad </th>
           <th> CURP </th></tr>
           </thead>
           <tbody class = 'contenido_alumno'>";
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
  $html.="</tbody></table>";
  echo( $html );
?>
