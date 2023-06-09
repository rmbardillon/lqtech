<?php
require('../../libs/plugins/fpdf/fpdf.php');
include_once('../../config/database.php');
include_once('../../data/model/Report.php');

$Report = new Report($conn);

class PDF extends FPDF
{
    // Page header
    function Header()
    {
        // Logo image
        $this->Image('../../libs/images/lqtechicon.png', 10, 10, 30);
        
        // Company information
        $this->SetFont('Arial','B',12);
        $this->Cell(40);
        $this->Cell(0,10,'LQTech Security Solutions',0,1);
        $this->SetFont('Arial','',10);
        $this->Cell(40);
        $this->Cell(0,5,'Leading Quality Technologies',0,1);
        $this->Cell(40);
        $this->Cell(0,5,'#23 F. Gomez St., Brgy. Kanluran',0,1);
        $this->Cell(40);
        $this->Cell(0,5,'Sta. Rosa City, Laguna 4024',0,1);
        
        // Line break
        $this->Ln(10);
        $this->Line(10, 40, 200, 40);
    }
    // Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

if(isset($_GET['from'])){

    $from = $_GET['from'];
    $to = $_GET['to'];
    $fromDate = date('M j, Y', strtotime($from));
    $toDate = date('M j, Y', strtotime($to));
    $result = $Report->getReport3($from, $to);
}

// Instanciation of inherited class
$pdf = new PDF('P', 'mm', "Legal");
$pdf->AliasNbPages();
$pdf->AddPage();

// Set font
$pdf->SetFont('Arial','B',12);

// Row 1
if(isset($_GET['from'])){
    $pdf->Cell(0,6,strtoupper('INSTALLER REPORTS FOR '.$fromDate." TO ".$toDate),0,1,'C');
} else {
    $pdf->Cell(0,6,strtoupper('INSTALLER REPORTS FOR FROMDATE TO TODATE'),0,1,'C');
}

// Line break
$pdf->Ln(1);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(13,10,'No.',1,0,'C');
$pdf->Cell(137,10,'Installer',1,0,'C');
$pdf->Cell(40,10,'Quantity',1,1,'C');

if(isset($_GET['from'])){
    $i = 1;
    foreach($result as $key => $value)
    {
        $pdf->Cell(13,7,$i,1,0,'C');
        $pdf->Cell(137,7,$value['INSTALLER'],1,0,'C');
        $pdf->Cell(40,7,$value['TOTAL'],1,1,'C');
        $i++;
    }
} else {
    for ($i = 1; $i <= 10; $i++)
    {
        $pdf->Cell(13,7,$i,1,0,'C');
        $pdf->Cell(60,7,"PROJECT_NAME",1,0,'C');
        $pdf->Cell(50,7,"CONTACT_PERSON",1,0,'C');
        $pdf->Cell(40,7,"CONTACT_NUMBER",1,0,'C');
        $pdf->Cell(50,7,"PROJECT_SITE",1,0,'C');
        $pdf->Cell(40,7,"INSTALLER",1,0,'C');
        $pdf->Cell(40,7,"SALES_ORDER_NUMBER",1,0,'C');
        $pdf->Cell(40,7,"JOB_ORDER_NUMBER",1,1,'C');
    }
}

// Line break
$pdf->Ln(5);
// echo($pdf->GetY());
if($pdf->GetY() > 258.00125)
{
    $pdf->AddPage();
}
// First column
$pdf->SetXY(10, $pdf->GetY());
$pdf->Cell(70, 5, 'PREPARED BY:', 0, 1);
$pdf->Cell(50, 5, strtoupper($_SESSION['user']['fullname']), 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5,date("Y/m/d") , 0, 1);
$pdf->Ln(5);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(70, 5, 'RECEIVED BY:', 0, 1);
$pdf->Cell(50, 5, "", 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, "", 0, 1);
$pdf->Ln(5);

$pdf->Output();
?>