<?php
    require("../../php/DB_Manager.php");
    
    session_start();
    if (!isset($_SESSION['usr'])) { header('Location: ../index.php'); }
    
    $cargados = 0;
    if (($f_manager = fopen("calificaciones.csv", "r")) !== FALSE) {
        while (($data = fgetcsv($f_manager, 50, ",")) !== FALSE) {
            if (count($data) == 2) {
                if (update_aciertos($data[0], $data[1])) {
                    $cargados++;
                } else {
                    echo "Error al subir a la base de datos el registro: ".$data[0];
                }
            } else {
                echo "Error en archivo";
            }
        }
        echo "$cargados calificaciones cargadas.<br />";
        fclose($f_manager);
    }
?>