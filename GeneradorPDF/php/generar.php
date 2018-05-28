
<?php

require_once '../vendor/autoload.php';
use \Mpdf\Output\Destination;

function getNumberPages($nombrePdf)
{
	$mpdf = new \Mpdf\Mpdf();
	$mpdf->SetImportUse();

	$pagecount = $mpdf->SetSourceFile($nombrePdf);
	return $pagecount;
}
function generate($pagenumber)
{
	$mpdf = new \Mpdf\Mpdf();
	$mpdf->SetImportUse();

	$mpdf->SetSourceFile('abc.pdf');	
	$tplId = $mpdf->ImportPage($pagenumber);
	$mpdf->UseTemplate($tplId);
	
	$mpdf->Output(($pagenumber-1).'.pdf',\Mpdf\Output\Destination::DOWNLOAD);
	//$mpdf->Output($pagenumber.'_pag.pdf','');
}

$pagenumber = $_POST['idprofesor'];
if($pagenumber >= 1 && $pagenumber <getNumberPages('abc.pdf'))
	generate($pagenumber+1);
header( "Location: ../index.php" );

/*
$paginas = getNumberPages('abc.pdf');
//echo $pagecount;

for($i = 1; $i < $paginas; $i++)
{
	generate($i+1);
}*/

echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Generador GENERADO</title>
   

</head>
<body  background = "../imgs/background.png">
    
    <script type = "text/javascript" src="../js/materialize.min.js"></script>
</body> 
</html>'

?>

