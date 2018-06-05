
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

	$mpdf->SetSourceFile('archivo_pdf_ver.pdf');	
	$tplId = $mpdf->ImportPage($pagenumber);
	$mpdf->UseTemplate($tplId);
	
	$mpdf->Output(($pagenumber-1).'.pdf',\Mpdf\Output\Destination::DOWNLOAD);
	//$mpdf->Output();
	
	
	//$mpdf->Output($pagenumber.'_pag.pdf','');
}

$pagenumber = $_POST['idprofesor'];
if($pagenumber >= 1 && $pagenumber < getNumberPages('archivo_pdf_ver.pdf'))
	generate($pagenumber+1);
header( "Location: ../index.php" );

/*
$paginas = getNumberPages('abc.pdf');
//echo $pagecount;

for($i = 1; $i < $paginas; $i++)
{
	generate($i+1);
}*/



