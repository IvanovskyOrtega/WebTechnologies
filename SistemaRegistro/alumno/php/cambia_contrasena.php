<?php
    require("../../php/DB_Manager.php");
    $ref = $_SESSION['ref'];
    $old_pass = $_POST['contrasena_actual'];
    $new_pass = $_POST['contrasena_nueva'];
    echo update_contrasena(connect(), $ref, $old_pass, $new_pass);
?>