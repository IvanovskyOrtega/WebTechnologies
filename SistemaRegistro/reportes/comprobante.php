<?php
    require_once '../../../../vendor/autoload.php';
    require("../php/DB_Manager.php");
    session_start();
    if (isset($_SESSION['ref'])) {
        $alum_data = get_comprobante($_SESSION['ref']);
        $horario = strtotime($alum_data['Horario']);
        $fecha = date("d/m/Y", $horario);
        $hora = date("");
        $mpdf = new \Mpdf\Mpdf(['Mode' => 'utf-8', 'format' => 'A4']);
        $mpdf->WriteHTML("<table><tbody>");
        $mpdf->WriteHTML("<tr><td>".$alum_data['NoReferencia']."</td></tr>");
        $mpdf->WriteHTML("<tr><td>".$alum_data['Nombre']." ".$alum_data['Ap1']." ".$alum_data['Ap2']."</td></tr>");
        $mpdf->WriteHTML("<tr><td>".$alum_data['CURP']."</td></tr>");
        $mpdf->WriteHTML("<tr><td>".$fecha."</td></tr>");
        $mpdf->WriteHTML("<tr><td>Laboratorio ".$alum_data['Laboratorio']."</td></tr>");
        $mpdf->WriteHTML("</tbody></table>");
        $mpdf->Output();
    } else {
        header('Location: ../index.php');
    }
?>