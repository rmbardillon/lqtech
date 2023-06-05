<?php

include_once('../../config/database.php');
include_once('../model/Product.php');
include_once('../model/ProductDetails.php');

$action = $_GET['action'];
$ProductDetails = new ProductDetails($conn);
$Product = new Product($conn);

if ($action == 'getTableDataStockStatus') 
{
    $result = $Product->getAllByStockStatus();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['BRAND'] . '</td>';
        $table_data .= '<td>' . $product['MODEL'] . '</td>';
        $table_data .= '<td>' . $product['IN_QUANTITY'] . '</td>';
        $table_data .= '<td><span class="category" style="color: red;">Low Stocks</span></td>';
        $table_data .= '<td><button class="btn btn-info restock" onclick="Alerts.restock(`' . $product['PRODUCT_DETAILS_ID'] .'`)">Restock</button></td>';
        $table_data .= '</tr>';

        $counter++;
        $_SESSION['alert_stock_status'] = $product['QUANTITY'];
    }
    echo json_encode($table_data);
}

else if ($action == 'getTableDataEstimatedDateAlert') 
{
    $result = $Product->getTableDataEstimatedDateAlert();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['PROJECT_NAME'] . '</td>';
        $table_data .= '<td>' . $product['CONTACT_PERSON'] . '</td>';
        $table_data .= '<td>' . $product['CONTACT_NUMBER'] . '</td>';
        $table_data .= '<td>' . $product['ESTIMATED_DATE'] . '</td>';
        $table_data .= '<td class="text-danger">' . $product['DAYS_REMAINING'] . '</td>';
        $table_data .= '</tr>';

        $counter++;
    }
    echo json_encode($table_data);
}

else if($action == 'getAlertCount')
{
    $result = $Product->getAllAlert();
    foreach($result as $product)
    {
        $result = $product['total_rows'];
    }
    echo json_encode($result);
}


