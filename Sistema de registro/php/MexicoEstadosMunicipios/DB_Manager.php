<?php
	$mysqli_mem = new mysqli( "localhost", "root", "", "mexico_estados_municipios" );
	if( mysqli_connect_errno() ){
		echo( 'Conexion Fallida:'.mysqli_connect_error() );
		exit();
	}
?>
