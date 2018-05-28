<?php

require_once '../vendor/autoload.php';

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
	$mpdf->Output('ejemplo'.$pagenumber.'_pag.pdf','');
}
$paginas = getNumberPages('abc.pdf');
//echo $pagecount;

for($i = 1; $i <= $paginas; $i++)
{
	generate($i);
}

?>
