<?php
    require_once '../../../../vendor/autoload.php';
    $mpdf = new \Mpdf\Mpdf(['Mode' => 'utf-8', 'format' => 'A4-L']);
    $mpdf->WriteHTML("");
    session_start();
    if (isset($_SESSION['chart'])) {
        $mpdf->Image($_SESSION['chart'], 20, 33, 257, 144, 'png', '', true, false);
        unset($_SESSION['chart']);
        $mpdf->Output();
    } else {
        header('Location: ../index.php');
    }
?>