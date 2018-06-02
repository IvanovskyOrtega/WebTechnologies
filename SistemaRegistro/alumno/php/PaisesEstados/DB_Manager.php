<?php
	$mysqli_pe = new mysqli( "localhost", "root", "", "paises_estados" );

	if( mysqli_connect_errno() ){
		echo( 'Conexion Fallida:'.mysqli_connect_error() );
		exit();
	}
?>
