<?php
require('../../libs/plugins/fpdf/fpdf.php');
include_once('../../config/database.php');
include_once('../../data/model/Product.php');

$Product = new Product($conn);

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

if(isset($_GET['installationFormID'])){

    $installationFormID = $_GET['installationFormID'];
    $result = $Product->getInstallationStatus($installationFormID);

    // print_r($result);
    
    foreach ($result as $row) {
        $projectName = $row['PROJECT_NAME'];
        $dateFormatted = $row['FORMATTED_DATE'];
        $date = $row['DATE_TIME'];
        $contactPerson = $row['CONTACT_PERSON'];
        $contactNumber = $row['CONTACT_NUMBER'];
        $projectSite = $row['PROJECT_SITE'];
        $salesmanBranch = $row['SALESMAN_BRANCH'];
        $installer = $row['INSTALLER'];
        $salesOrderNumber = $row['SALES_ORDER_NUMBER'];
        $jobOrderNumber = $row['JOB_ORDER_NUMBER'];
        $service = $row['SERVICE'];
        $status = $row['STATUS'];
        $note = $row['NOTE'];
        $preparedBy = $row['PREPARED_BY'];
        $receivedBy = $row['RECEIVED_BY'];
        $transmittedBy = $row['TRANSMITTED_BY'];
    }

    $serialNumbersByModel = [];
    foreach ($result as $element) {
        $model = $element['MODEL'];
        $serialNumbers = array_filter($result, function($obj) use ($model) {
            return $obj['MODEL'] === $model;
        });
        $serialNumbers = array_map(function($obj) {
            return $obj['SERIAL_NUMBER'];
        }, $serialNumbers);

        $serialNumbersByModel[$model] = $serialNumbers;
    }
}

// Instanciation of inherited class
$pdf = new PDF('P', 'mm', "Legal");
$pdf->AliasNbPages();
$pdf->AddPage();

// Set font
$pdf->SetFont('Arial','B',10);

// Row 1
$pdf->Cell(0,6,'INSTALLATION FORM / TRANSMITTAL',0,1,'C');

// Row 2
$pdf->Cell(110,6,'PROJECT NAME: '.$projectName,1,0);
$pdf->Cell(80,6,'DATE: '.$dateFormatted,1,1);

// Row 3
$pdf->Cell(110,6,'CONTACT PERSON: '.$contactPerson,1,0);
$pdf->Cell(80,6,'CONTACT NUMBER: '.$contactNumber,1,1);

// Row 4
$pdf->Cell(190,6,'PROJECT SITE: '.$projectSite,1,1);

// Row 5
$pdf->Cell(95,6,'SALESMAN / BRANCH: '.$salesmanBranch,1,0);
$pdf->Cell(95,6,'INSTALLER: '.$installer,1,1);

// Row 6
$pdf->Cell(65,6,'SALES ORDER NUMBER: '.$salesOrderNumber,1,0);
$pdf->Cell(65,6,'JOB ORDER NUMBER: '.$jobOrderNumber,1,0);
$pdf->Cell(60,6,'SERVICE: '.$service,1,1);

// Line break
$pdf->Ln(1);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(13,10,'No.',1,0,'C');
$pdf->Cell(30,10,'Item Code',1,0,'C');
$pdf->Cell(70,10,'Item Description / Serials',1,0,'C');
$pdf->Cell(19,10,'QTY OUT',1,0,'C');
$pdf->Cell(19,10,'QTY RETURN',1,0,'C');
$pdf->Cell(39,10,'SERIAL NUMBER (RETURNS)',1,1,'C');

$i = 1;
foreach($serialNumbersByModel as $key => $value)
{
    $pdf->Cell(13,7,$i,1,0,'C');
    $pdf->Cell(30,7,$key,1,0,'C');
    $pdf->Cell(70,7,implode(',', $value),1,0,'C');
    $pdf->Cell(19,7,count($value),1,0,'C');
    $pdf->Cell(19,7,'$itemQTYReturn',1,0,'C');
    $pdf->Cell(39,7,'$serialNumberReturn',1,1,'C');
    $i++;
}
// for($i = 1; $i <= 80; $i++)
// {
//     $pdf->Cell(13,7,$i,1,0,'C');
//     $pdf->Cell(30,7,'$itemCode',1,0,'C');
//     $pdf->Cell(70,7,'$itemDesc',1,0,'C');
//     $pdf->Cell(19,7,'$itemQTYOut',1,0,'C');
//     $pdf->Cell(19,7,'$itemQTYReturn',1,0,'C');
//     $pdf->Cell(39,7,'$serialNumberReturn',1,1,'C');
// }

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
$pdf->Cell(50, 5, strtoupper($preparedBy), 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, $date, 0, 1);
$pdf->Ln(5);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(70, 5, 'TRANSMITTED BY:', 0, 1);
$pdf->Cell(50, 5, strtoupper($transmittedBy), 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, date("Y/m/d"), 0, 1);
$pdf->Ln(5);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(70, 5, 'RECEIVED BY:', 0, 1);
$pdf->Cell(50, 5, strtoupper($receivedBy), 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, date("Y/m/d"), 0, 1);
$pdf->Ln(5);

// Set font
$pdf->SetFont('Arial','B',10);

$pdf->SetXY(70, $pdf->GetY() - 75);
$pdf->Cell(12, 5, 'NOTE:', 0, 0);
$pdf->SetFont('Arial','U',10);
// Add paragraph
$text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod risus at elit fringilla, nec posuere est suscipit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam id luctus mi, id molestie odio. Duis vel turpis ac nibh tincidunt ultricies vel sit amet erat. Sed sed est quis lorem gravida malesuada nec quis neque. Proin et dui non ex ullamcorper malesuada. Vestibulum sodales dolor vitae aliquam bibendum. Duis eget ex eu purus iaculis posuere. Sed sit amet ultricies ipsum. Donec finibus ultricies leo, eget eleifend ante malesuada sit amet.

Sed luctus justo non tellus congue, nec hendrerit sapien pellentesque. Vestibulum viverra, odio et vulputate euismod, magna sapien ultrices libero, vel lobortis ex mauris quis elit. Donec tincidunt lectus libero, vel rutrum neque tincidunt eget. Praesent a efficitur velit. Ut volutpat urna in consequat consequat. Sed euismod vestibulum magna. Sed tincidunt dolor at quam maximus scelerisque.';
$pdf->MultiCell(120, 5, $note, 0, 'L');



$pdf->Output();
?>