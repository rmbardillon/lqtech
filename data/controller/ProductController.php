<?php

include_once('../../config/database.php');
include_once('../model/Category.php');
include_once('../model/Product.php');
include_once('../model/ProductDetails.php');

$action = $_GET['action'];
$Category = new Category($conn);
$Product = new Product($conn);
$ProductDetails = new ProductDetails($conn);

if(isset($_GET['barcode'])){
    $barcode = $_GET['barcode'];
}

if ($action == 'getTableDataRegister') 
{
    $result = $ProductDetails->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['CATEGORY'] . '</td>';
        $table_data .= '<td>' . $product['BRAND'] . '</td>';
        $table_data .= '<td>' . $product['MODEL']. '</td>';
        $table_data .= '<td>' . $product['SELLING_PRICE'] . '</td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
        $table_data .= '<button type="button" onclick="Product.clickUpdate(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-warning btn-sm w-100"><i class="bi bi-list-check"></i> Update </button>';
        // $table_data .= '<button type="button" onclick="Product.clickDelete(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> Delete</button>';
        $table_data .= '</div>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if ($action == 'getProductTable') 
{
    $category = $_GET['category'];
    $result = $ProductDetails->getAllRegisteredProducts($category);

    $options = '<option value="" selected="true" disabled>Select Product</option>';

    foreach ($result as $product) 
    {
        $options .= '<option value='. $product['PRODUCT_DETAILS_ID'] .'>' . $product['MODEL'] . '</option>';
    }

    echo json_encode($options);
}

else if ($action == 'getProductsTable') 
{
    $result = $Product->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        // $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['QUANTITY'] . '</td>';
        $table_data .= '<td>' . $product['CATEGORY'] . '</td>';
        $table_data .= '<td>' . $product['BRAND'] . '</td>';
        $table_data .= '<td>' . $product['MODEL']. '</td>';
        $table_data .= '<td>' . $product['SKU']. '</td>';
        $table_data .= '<td class="col-actions">';
        $table_data .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
        $table_data .= '<button type="button" onclick="Product.clickUpdate(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-warning btn-sm"><i class="bi bi-list-check"></i> Update </button>';
        $table_data .= '<button type="button" onclick="Product.clickDelete(`'. $product['PRODUCT_DETAILS_ID'] .'`)" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> Delete</button>';
        $table_data .= '</div>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if ($action == 'getProducts') 
{
    $result = $Product->getAll();

    echo json_encode($result);
}

else if ($action == 'displayProductsTable') 
{
    $result = $Product->getAll();

    $table_data = '';
    $counter = 1;
    foreach ($result as $product) {
        $table_data .= '<tr>';
        $table_data .= '<td>' . $counter . '</td>';
        $table_data .= '<td>' . $product['CATEGORY'] . '</td>';
        $table_data .= '<td>' . $product['BRAND'] . '</td>';
        $table_data .= '<td>' . $product['MODEL']. '</td>';
        $table_data .= '<td>' . $product['QUANTITY'] . '</td>';
        $table_data .= '<td>' . $product['SELLING_PRICE'] . '</td>';
        $table_data .= '<td><button class="btn btn-warning"><i class="bi bi-list-check"></i>Edit</button></td>';
        $table_data .= '</td>';
        $table_data .= '</tr>';

        $counter++;
    }

    echo json_encode($table_data);
}

else if ($action == 'getSelectData')
{
    $result = $Category->getAll();

    $options = '<option value="" selected="true" disabled>Select Category</option>';
    
    foreach ($result as $category) 
    {
        $options .= '<option value='. $category['id'] .'>' . $category['name'] . '</option>';
    }

    echo json_encode($options);
}

else if ($action == 'getBySku')
{
    $sku = $_POST['sku'];

    echo json_encode($Product->getBySku($sku));
}

else if ($action == 'getByID')
{
    $id = $_POST['id'];

    echo json_encode($Product->getByID($id));
}

else if($action == 'getSales')
{
    $result = $Product->getSales();

    echo(json_encode($result));
}

else if($action == 'getIn')
{
    $result = $Product->getIn();

    echo(json_encode($result));
}

else if ($action == 'save')
{
    $category = $_POST['data']['category'];
    $brand = $_POST['data']['brand'];
    $model = $_POST['data']['model'];
    $buying_price = $_POST['data']['buying_price'];
    $selling_price = $_POST['data']['selling_price'];

    $request = [
        'category' => $category,
        'brand' => $brand,
        'model' => $model,
        'buying_price' => $buying_price,
        'selling_price' => $selling_price,
    ];

    if($category == "Camera") {
        $request['camera_type'] = $_POST['data']['camera_type'];
        $request['camera_shape'] = $_POST['data']['camera_shape'];
    } else if($category == "Recorder") {
        $request['recorder_type'] = $_POST['data']['recorder_type'];
    } else if($category == "Hard drive") {
        $request['capacity'] = $_POST['data']['capacity'];
    } else if($category == "Power Supply") {
        $request['psu_type'] = $_POST['data']['psu_type'];
        $request['watts'] = $_POST['data']['watts'];
    } else if($category == "Monitor") {
        $request['monitor_size'] = $_POST['data']['monitor_size'];
    }

    $result = $Product->save($request);
    echo json_encode($result);
}

else if ($action == 'insert')
{
    $model = $_POST['model'];
    $sku = $_POST['sku'];
    $serial_numbers = $_POST['serial_numbers'];

    $request = [
        'model' => $model,
        'serial_numbers' => $serial_numbers,
        'sku' => $sku,
    ];

    $result = $Product->insert($request);
    echo json_encode($result);
}

else if ($action == 'updateProductDetails')
{
    $product_id = $_POST['product_id'];
    $buying_price = $_POST['buying_price'];
    $selling_price = $_POST['selling_price'];
    
    $request = [
        'product_id' => $product_id,
        'buying_price' => $buying_price,
        'selling_price' => $selling_price,
    ];
    $result = $Product->updateSellPrice($request);
    // $result = $ProductDetails->update($request);
    
    echo json_encode($result);
}

else if ($action == 'getProductForUpdate')
{
    $product_id = $_POST['product_id'];

    $result = $Product->getById($product_id);

    echo json_encode($result);
}

else if($action == 'delete')
{
    $product_id = $_POST['product_id'];

    $result = $Product->delete($product_id);

    echo json_encode($result);
}

else if ($action == 'updateProduct')
{
    $product_id = $_POST['product_id'];
    $product_name = $_POST['product_name'];
    $product_barcode = $_POST['product_barcode'];
    $product_category = $_POST['product_category'];
    $selling_price = $_POST['selling_price'];
    $status = $_POST['status'];
    $max_stock = $_POST['max_stock'];
    $min_stock = $_POST['min_stock'];
    $type = $_POST['type'];
    // $expired_products = $_POST['expired_products'];

    $request = [
        'product_id' => $product_id,
        'product_name' => $product_name,
        'product_barcode' => $product_barcode,
        'product_category' => $product_category,
        'selling_price' => $selling_price,
        'status' => $status,
        'max_stock' => $max_stock,
        'min_stock' => $min_stock,
        'type' => $type,
        // 'expired_products' => $expired_products,
    ];

    $result = $Product->update($request);

    echo json_encode($result);

}

else if($action === 'getAvailableProductByBarcode'){
    $result = $Product->getAvailableProductByBarcode($barcode);
    echo json_encode($result);
}

else if($action === 'getTotalProduct')
{
    $result = $Product->getTotalProduct();
    echo json_encode($result);
}

else if($action === 'checkout')
{
    $productCart = $_POST['productCart'];
    $result = $Product->checkout($productCart);

    echo json_encode($result);
}

else if($action === 'checkSerialNumbers')
{
    $serial_number = $_POST['serial_number'];
    $result = $Product->checkSerialNumbers($serial_number);

    echo json_encode($result);
}