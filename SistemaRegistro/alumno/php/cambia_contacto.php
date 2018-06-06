<?php
    require("../../php/DB_Manager.php");
    session_start();
    $ref = $_SESSION['ref'];
    $dir = $_POST['direccion'];
    $edo = $_POST['direccion_estado'];
    $mun = $_POST['direccion_municipio'];
    $cor = $_POST['email'];
    $cel = $_POST['telefono_celular'];
    $tel = $_POST['telefono_casa'];
    echo(update_contacto(connect(), $ref, $dir, $edo, $mun, $cor, $cel, $tel));
?>