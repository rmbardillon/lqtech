<?php

include_once('../../config/database.php');
include_once('../model/Category.php');

$action = $_GET['action'];
$Category = new Category($conn);

if ($action == 'getTableData') 
{
    $result = $Category->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $category) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td><span class="category">'  . $category['MODEL'] . '</span></td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
        $table_data .= '<button type="button" onclick="Category.clickUpdate(`'. $category['MODEL_ID'] .'`)" data-id="'. $category['MODEL_ID'] .'" class="btn btn-warning btn-sm"><i class="bi bi-list-check"></i> Update </button>';
        if($_SESSION['user']['role'] == 1) {
            $table_data .= '<button type="button" onclick="Category.clickDelete(`'. $category['MODEL_ID'] .'`)" data-id="'. $category['MODEL_ID'] .'" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> Delete</button>';
        }
        $table_data .= '</div>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if ($action == 'getSelectData')
{
    $result = $Category->getAll();

    $options = '<option value="" selected="true" disabled>Select Model</option>';

    foreach ($result as $category) 
    {
        $options .= '<option value='. $category['MODEL'] .'>' . $category['MODEL'] . '</option>';
    }

    echo json_encode($options);
}

else if ($action == 'getById')
{
    $model_id = $_POST['model_id'];

    echo json_encode($Category->getById($model_id));
}

else if ($action == 'save')
{
    $model_name = $_POST['model_name'];
    $category = $_POST['category'];

    $request = [
        'name' => $model_name,
        'category' => $category,
    ];

    $result = $Category->save($request);

    echo json_encode($result);
}

else if ($action == 'update')
{
    $model_id = $_POST['model_id'];
    $model_name = $_POST['model_name'];

    $request = [
        'id' => $model_id,
        'name' => $model_name,
    ];

    $result = $Category->update($request);

    echo json_encode($result);
}

else if ($action == 'delete')
{
    $model_id = $_POST['model_id'];

    $result = $Category->delete($model_id);

    echo json_encode($result);
}