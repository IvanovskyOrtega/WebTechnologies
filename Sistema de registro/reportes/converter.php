<?php
    require 'pdfcrowd.php';

    try {
        $client = new \Pdfcrowd\HtmlToPdfClient("potato", "dbd499a8aea124ad5242ee19ee203aac");
        $client->convertUrlToFile("http://localhost/Sistema%20de%20registro/reportes/test1.html", "example.pdf");
    } catch(\Pdfcrowd\Error $why) {
        fwrite(STDERR, "Pdfcrowd Error: {$why}\n");
    }
?>
