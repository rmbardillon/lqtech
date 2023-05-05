<?php

include_once('../../config/database.php');
include_once('../model/Stock.php');

$action = $_GET['action'];
$Stock = new Stock($conn);

if ($action == 'displayStocksTable') 
{
    $result = $Stock->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['CATEGORY'] . '</td>';
        $table_data .= '<td>' . $product['BRAND'] . '</td>';
        $table_data .= '<td>' . $product['MODEL']. '</td>';
        $table_data .= '<td>' . $product['IN_QUANTITY'] . '</td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<button type="button" onclick="Stock.viewProduct(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-warning btn-sm w-50"><i class="bi bi-list-check"></i>View</button>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if($action == 'displayStocksPerId')
{
    $result = $Stock->getById($_POST['id']);

    $table_data = '';
    $counter = 1;
    $totalStocks = 0;
    foreach ($result as $product) {
        $totalStocks += $product['IN'] - $product['OUT'];
        $table_data .= '<tr>';
        $table_data .= '<td>' . $product['DATE_TODAY'] . '</td>';
        $table_data .= '<td>' . $product['IN'] . '</td>';
        $table_data .= '<td>' . $product['OUT'] . '</td>';
        $table_data .= '<td>' . $totalStocks . '</td>';
        $table_data .= '</tr>';

        $counter++;
    }


    echo json_encode($table_data);
}

else if($action == 'getById')
{
    $result = $Stock->getById($_POST['id']);

    echo json_encode($result);
}