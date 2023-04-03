<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);

// mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

include_once('ActionLog.php');

class Product
{
    private $conn;
    private $ActionLog;

    private $commonSql = "SELECT p.id AS product_id, p.name AS product_name, barcode, sale_price, status, max_stock, min_stock, type, expired_products,
    c.id AS category_id, c.name AS category_name,
    SUM(pd.quantity) AS total_quantity
    FROM products p 
    INNER JOIN categories c 
    ON p.category_id = c.id 
    INNER JOIN product_details pd 
    ON p.id = pd.product_id ";

    private $groupBySql = " GROUP BY p.id, p.name, barcode, sale_price, status, max_stock, min_stock,
    c.id, c.name";

    public function __construct($connection)
    {
        $this->conn = $connection;
        $this->ActionLog = new ActionLog($connection);
    }

    public function getAll()
    {
        $sql = $this->commonSql . ' WHERE expired_status = 0 ' . $this->groupBySql ;
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getAllExpired()
    {
        $sql = $this->commonSql . ' WHERE expired_status = 1 ' . $this->groupBySql ;
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getAllByStockStatus()
    {
        $sql = $this->commonSql . ' WHERE expired_status = 0 ' . $this->groupBySql . ' HAVING sum(pd.quantity) NOT BETWEEN min_stock and max_stock' ;
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getByBarcode($barcode)
    {
        $sql = "SELECT id, name from products where barcode = '$barcode'";
        $result = $this->conn->query($sql);

        return $result->fetch_assoc();
    }

    public function getById($product_id)
    {
        $sql = "SELECT id, category_id, barcode, name, sale_price, status, max_stock, min_stock, type from products where id = '$product_id'";
        $result = $this->conn->query($sql);

        return $result->fetch_assoc();
    }

    public function save($request)
    {
        $category = $request['category'];
        $brand = $request['brand'];
        $model = $request['model'];
        $buying_price = $request['buying_price'];
        $selling_price = $request['selling_price'];
        $serial_number = $request['serial_number'];
        $date_added = date("Y-m-d H:i:s");

        if($category == "Camera") {
            $camera_type = $request['camera_type'];
            $camera_shape = $request['camera_shape'];
            $sql = "INSERT INTO products (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, SERIAL_NUMBER, CAMERA_TYPE, CAMERA_SHAPE) 
            VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiisss", $category, $brand, $model, $buying_price, $selling_price, $serial_number, $camera_type, $camera_shape);
        } else if($category == "Recorder") {
            $recorder_type = $request['recorder_type'];
            $sql = "INSERT INTO products (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, SERIAL_NUMBER, RECORDER_TYPE) 
            VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiiss", $category, $brand, $model, $buying_price, $selling_price, $serial_number, $recorder_type);
        } else if($category == "Hard drive") {
            $capacity = $request['capacity'];
            $sql = "INSERT INTO products (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, SERIAL_NUMBER, CAPACITY) 
            VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiiss", $category, $brand, $model, $buying_price, $selling_price, $serial_number, $capacity);
        } else if($category == "Power Supply") {
            $psu_type = $request['psu_type'];
            $watts = $request['watts'];
            $sql = "INSERT INTO products (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, SERIAL_NUMBER,PSU_TYPE, WATTS) 
            VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiisss", $category, $brand, $model, $buying_price, $selling_price, $serial_number, $psu_type, $watts);
        } else if($category == "Monitor") {
            $monitor_size = $request['monitor_size'];
            $sql = "INSERT INTO products (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, SERIAL_NUMBER, MONITOR_SIZE) 
            VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiiss", $category, $brand, $model, $buying_price, $selling_price, $serial_number, $monitor_size);
        }
        
        $result = '';
        if ($stmt->execute() === TRUE) {
            $result = "Successfully Save";
            $this->ActionLog->saveLogs('product', 'saved');
            return $this->conn->insert_id;
        } else {
            return "Error: " . $sql . "<br>" . $this->conn->error;
        }

    }

    public function update($request)
    {
        $product_id = $request['product_id'];
        $product_name = $request['product_name'];
        $product_barcode = $request['product_barcode'];
        $product_category = $request['product_category'];
        $selling_price = $request['selling_price'];
        $status = $request['status'];
        $max_stock = $request['max_stock'];
        $min_stock = $request['min_stock'];
        $type = ($request['type'] != "" ? $request['type'] : null);
        // $expired_products = $request['expired_products'];
        
        $sql = "UPDATE products 
        SET category_id= ?, barcode= ?, name= ?, sale_price= ?, status= ?, max_stock=?, min_stock=?, type=?, expired_products=?
        WHERE id= ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("issdiiisii",$product_category, $product_barcode, $product_name, $selling_price, $status, $max_stock, $min_stock, $type, $expired_products, $product_id);
        $result = '';
        if ($stmt->execute() === TRUE) {
            $result = "Successfully Update";
            $this->ActionLog->saveLogs('product', 'updated');
            return $this->conn->insert_id;
        } else {
            return "Error: " . $sql . "<br>" . $this->conn->error;
        }

    }


    public function updateSellPrice($request)
    {
        $id = $request['product_id'];
        $selling_price = $request['selling_price'];
        $buying_price = $request['buying_price'];
        $sql = "UPDATE products SET SELLING_PRICE=?, BUYING_PRICE=? WHERE PRODUCT_ID=?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("dds",$selling_price, $buying_price, $id);

        $result = '';
        if ($stmt->execute() === TRUE) {
            $result = "Updated Successfully";
            $this->ActionLog->saveLogs('product', 'update sell price of');
        } else {
            $result = "Error updating record: " . $this->conn->error;
        }

        return $result;
    }

    public function delete($product_id)
    {
        $sql = "DELETE FROM products WHERE PRODUCT_ID='$product_id'";

        $result = '';
        if ($this->conn->query($sql) === TRUE) {
            $result = "Deleted Successfully";
            $this->ActionLog->saveLogs('product', 'deleted');
        } else {
            $result = "Error deleting record: " . $this->conn->error;
        }

        $this->conn->close();

        return $result;


    }

    public function getAvailableProductByBarcode($barcode){
        $sql = "SELECT
        p.id, p.barcode, p.name AS product_name, p.sale_price, p.type, p.status, p.category_id,
        pd.id, pd.product_id, pd.expired_status, pd.quantity, pd.batch, pd.manufacture_date, pd.expiration_date,
        c.id, c.name AS category_name
        FROM products p 
        INNER JOIN product_details pd ON pd.product_id = p.id
        INNER JOIN categories c ON c.id = p.category_id
        WHERE expired_status = 0
        AND barcode = $barcode
        AND pd.quantity != 0
        ORDER BY batch ASC";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);

    }

    public function getTotalProduct()
    {
        $sql = "SELECT count(*) as total_product from products where status = 1";

        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_assoc();
    }
}