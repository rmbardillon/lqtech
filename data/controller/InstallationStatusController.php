<?php

include_once('../../config/database.php');
include_once('../model/Product.php');
include_once('../model/ProductDetails.php');

$action = $_GET['action'];
$Product = new Product($conn);
$ProductDetails = new ProductDetails($conn);

if ($action == 'getInstallationStatusTable') 
{
    $result = $Product->getInstallationStatusTable();

    $table_data = '';
    $counter = 1;
    foreach ($result as $form) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $form['PROJECT_NAME'] . '</td>';
        $table_data .= '<td>' . $form['FORMATTED_DATE'] . '</td>';
        $table_data .= '<td>' . $form['CONTACT_PERSON']. '</td>';
        $table_data .= '<td>' . $form['CONTACT_NUMBER'] . '</td>';
        $table_data .= '<td>' . $form['PROJECT_SITE'] . '</td>';
        $table_data .= '<td>' . $form['SALESMAN_BRANCH'] . '</td>';
        $table_data .= '<td>' . $form['INSTALLER'] . '</td>';
        $table_data .= '<td>' . $form['SALES_ORDER_NUMBER'] . '</td>';
        $table_data .= '<td>' . $form['JOB_ORDER_NUMBER'] . '</td>';
        $table_data .= '<td>' . $form['SERVICE'] . '</td>';
        $table_data .= '<td>' . $form['STATUS'] . '</td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
        $table_data .= '<button type="button" onclick="installationStatus.view(`'. $form['INSTALLATION_FORM_ID'] .'`)" class="btn btn-warning btn-sm w-100"><i class="bi bi-list-check"></i> View </button>';
        $table_data .= '</div>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if ($action == 'getInstallationStatus') 
{
    $id = $_POST['id'];
    $result = $Product->getInstallationStatus($id);

    echo json_encode($result);
}

else if($action == 'confirmTransaction')
{
    $id = $_POST['installationFormID'];
    $result = $Product->confirmTransaction($id);

    echo json_encode($result);
}

?>