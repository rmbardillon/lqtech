<?php
    require("../../libs/plugins/fpdf/fpdf.php");

    // define a function to calculate total sales
    function get_total_sales($start_date, $end_date) {
        // replace this with your actual calculation
        return 100;
    }

    // define the PDF document
    $pdf = new FPDF();
    $pdf->AddPage();

    // set the font for the title
    $pdf->SetFont('Arial', 'B', 24);

    // add the title
    $pdf->Cell(0, 20, 'Sales Report', 0, 1, 'C');

    // add a horizontal line under the title
    $pdf->SetLineWidth(0.5);
    $pdf->Line(10, 30, 200, 30);

    // set the font for the section headings
    $pdf->SetFont('Arial', 'B', 16);

    // add the current date
    $today = date('Y-m-d');
    $pdf->Cell(0, 10, "Today: $today", 0, 1);

    // add the total sales for today
    $today_sales = get_total_sales($today, $today);
    $pdf->Cell(0, 10, "Total sales today: \${$today_sales}.00", 0, 1);

    // add the total sales for this month
    $this_month = date('Y-m');
    $this_month_sales = get_total_sales("{$this_month}-01", $today);
    $pdf->Cell(0, 10, "Total sales this month: \${$this_month_sales}.00", 0, 1);

    // add the total sales for this year
    $this_year = date('Y');
    $this_year_sales = get_total_sales("{$this_year}-01-01", $today);
    $pdf->Cell(0, 10, "Total sales this year: \${$this_year_sales}.00", 0, 1);

    // add a footer with the current page number
    $pdf->SetY(-15);
    $pdf->SetFont('Arial', '', 10);
    $pdf->Cell(0, 10, "Page " . $pdf->PageNo() . " of {nb}", 0, 0, 'C');

    // output the PDF
    $pdf->Output();
?>