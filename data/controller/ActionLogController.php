<?php

include_once('../../config/database.php');
include_once('../model/ActionLog.php');

$action = $_GET['action'];
$ActionLog = new ActionLog($conn);

if ($action == 'getTableData') 
{
    $result = $ActionLog->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['DATE_TIME'] . '</td>';
        $table_data .= '<td>' . $product['ROLE'] . '</td>';
        $table_data .= '<td>' . $product['USERNAME'] . '</td>';
        $table_data .= '<td>' . $product['ACTION'] . '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

?>