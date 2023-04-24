<?php
require('libs/plugins/fpdf/fpdf.php');

class PDF extends FPDF
{
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

// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

// Set font
$pdf->SetFont('Arial','B',12);

// Row 1
$pdf->Cell(0,10,'INSTALLATION FORM / TRANSMITTAL',0,1,'C');

// Row 2
$pdf->Cell(110,10,'PROJECT NAME:',1,0);
$pdf->Cell(80,10,'DATE:',1,1);

// Row 3
$pdf->Cell(110,10,'CONTACT PERSON:',1,0);
$pdf->Cell(80,10,'CONTACT NUMBER:',1,1);

// Row 4
$pdf->Cell(190,10,'PROJECT SITE:',1,1);

// Row 5
$pdf->Cell(95,10,'SALESMAN / BRANCH:',1,0);
$pdf->Cell(95,10,'INSTALLER:',1,1);

// Row 6
$pdf->Cell(65,10,'SALES ORDER NUMBER:',1,0);
$pdf->Cell(65,10,'JOB ORDER NUMBER:',1,0);
$pdf->Cell(60,10,'SERVICE:',1,1);

$pdf->Output();
?>