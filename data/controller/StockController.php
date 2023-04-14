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
        $table_data .= '<td>' . $product['CATEGORY'] ." ". $product['BRAND'] . " " .$product['MODEL']. '</td>';
        $table_data .= '<td>' . $product['QUANTITY'] . '</td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<button type="button" onclick="Stock.viewProduct(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-warning btn-sm w-50"><i class="bi bi-list-check"></i>View</button>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if($action == 'viewProduct')
{
    $result = $Stock->getById($_POST['id']);

    $table_data = '';

    echo json_encode($table_data);
}