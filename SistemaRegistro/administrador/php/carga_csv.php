<?php
    require("../../alumno/php/classUpload.php");
    $uploader = new Uploader();
    $uploader -> config(1000000, "csv");
    
?>