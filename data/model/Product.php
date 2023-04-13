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
    FROM product_details p 
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
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                GROUP BY pd.PRODUCT_DETAILS_ID;";
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
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU,
                (SELECT COUNT(*)
                FROM (
                    SELECT 
                        pd.PRODUCT_DETAILS_ID
                    FROM 
                        products p
                        JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                    GROUP BY 
                        pd.PRODUCT_DETAILS_ID
                    HAVING 
                        COUNT(*) <= 10
                    ) AS subquery
                ) AS row_count
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                GROUP BY pd.PRODUCT_DETAILS_ID
                HAVING COUNT(*) <= 10";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getBySku($sku)
    {
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU, PRODUCT_ID
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE SKU = '$sku'
                GROUP BY pd.PRODUCT_DETAILS_ID;";
        $result = $this->conn->query($sql);

        return $result->fetch_assoc();
    }

    public function getByID($id)
    {
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU, PRODUCT_ID
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE pd.PRODUCT_DETAILS_ID = '$id'
                GROUP BY pd.PRODUCT_DETAILS_ID;";
        $result = $this->conn->query($sql);

        return $result->fetch_assoc();
    }

    public function getSales() 
    {
        $today = date('Y-m-d H:i:s', strtotime('today'));
        $tomorrow = date('Y-m-d H:i:s', strtotime('tomorrow'));

        $sql = "SELECT pd.MODEL, COUNT(*) as MODEL_COUNT
                FROM sales
                JOIN product_details pd ON sales.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE DATE_PURCHASED >= '$today' AND DATE_PURCHASED < '$tomorrow'
                GROUP BY pd.MODEL;";

        $result = $this->conn->query($sql);
        $rows = array();

        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
        }

        return $rows;
    }

    public function getIn() 
    {
        $today = date('Y-m-d H:i:s', strtotime('today'));
        $tomorrow = date('Y-m-d H:i:s', strtotime('tomorrow'));

        $sql = "SELECT pd.MODEL, COUNT(*) as MODEL_COUNT
                FROM products
                JOIN product_details pd ON products.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE DATE_INSERTED >= '$today' AND DATE_INSERTED < '$tomorrow'
                GROUP BY pd.MODEL;";

        $result = $this->conn->query($sql);
        $rows = array();

        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
        }

        return $rows;
    }

    public function save($request)
    {
        $category = $request['category'];
        $brand = $request['brand'];
        $model = $request['model'];
        $buying_price = $request['buying_price'];
        $selling_price = $request['selling_price'];
        $date_added = date("Y-m-d H:i:s");

        if($category == "Camera") {
            $camera_type = $request['camera_type'];
            $camera_shape = $request['camera_shape'];
            $sql = "INSERT INTO product_details (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, CAMERA_TYPE, CAMERA_SHAPE) 
            VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiiss", $category, $brand, $model, $buying_price, $selling_price, $camera_type, $camera_shape);
        } else if($category == "Recorder") {
            $recorder_type = $request['recorder_type'];
            $sql = "INSERT INTO product_details (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, RECORDER_TYPE) 
            VALUES(?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiis", $category, $brand, $model, $buying_price, $selling_price, $recorder_type);
        } else if($category == "Hard drive") {
            $capacity = $request['capacity'];
            $sql = "INSERT INTO product_details (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, CAPACITY) 
            VALUES(?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiis", $category, $brand, $model, $buying_price, $selling_price, $capacity);
        } else if($category == "Power Supply") {
            $psu_type = $request['psu_type'];
            $watts = $request['watts'];
            $sql = "INSERT INTO product_details (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE,PSU_TYPE, WATTS) 
            VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiiss", $category, $brand, $model, $buying_price, $selling_price, $psu_type, $watts);
        } else if($category == "Monitor") {
            $monitor_size = $request['monitor_size'];
            $sql = "INSERT INTO product_details (CATEGORY, BRAND, MODEL, BUYING_PRICE, SELLING_PRICE, MONITOR_SIZE) 
            VALUES(?, ?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssiis", $category, $brand, $model, $buying_price, $selling_price, $monitor_size);
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

    public function insert($request)
    {
        $model = $request['model'];
        $sku = $request['sku'];
        $serial_numbers = $request['serial_numbers'];
        $values_array = explode("\n", $serial_numbers);
        foreach($values_array as $serial_number) {
            if(trim($serial_number) === "") {
                continue;
            }
            $sql = "INSERT INTO products(PRODUCT_DETAILS_ID, SKU, SERIAL_NUMBER) VALUES (?, ?, ?)";

            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss",$model, $sku, $serial_number);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Successfully Save";

                $this->ActionLog->saveLogs('product', 'saved');
            } else {
                $result = "Error: <br>" . $this->conn->error;
            }

        }
        $this->conn->close();

        return $result;

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
        
        $sql = "UPDATE product_details 
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
        $sql = "UPDATE product_details SET SELLING_PRICE=?, BUYING_PRICE=? WHERE PRODUCT_ID=?";
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
        $sql = "DELETE FROM products WHERE PRODUCT_DETAILS_ID='$product_id'";

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
        FROM product_details p 
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
        $sql = "SELECT count(*) as total_product from product_details where status = 1";

        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_assoc();
    }

    public function checkout($productCart)
    {
        foreach($productCart as $product) {
            $sku = $product['sku'];
            $productID = $product['productID'];
            $productDetailsID = $product['productDetailsID'];
            $model = $product['model'];
            $serial_numbers = $product['serial_numbers'];
            $serial_number_array = explode("\n", $serial_numbers);
            
            foreach($serial_number_array as $serial_number) {
                if(trim($serial_number) === "") {
                    continue;
                }
                $sql = "INSERT INTO sales(PRODUCT_DETAILS_ID,SERIAL_NUMBER, SKU) VALUES (?, ?, ?)";
                $stmt = $this->conn->prepare($sql);
                $stmt->bind_param("sss",$productDetailsID, $serial_number, $sku);
                $result = '';
                if ($stmt->execute() === TRUE) {
                    $result = "Successfully Save";
                    $this->ActionLog->saveLogs('product', 'saved');
                } else {
                    $result = "Error: <br>" . $this->conn->error;
                }

                $sql = "DELETE FROM products WHERE SERIAL_NUMBER = ? AND SKU = ?";
                $stmt = $this->conn->prepare($sql);
                $stmt->bind_param("ss",$serial_number, $sku);
                $result = '';
                if ($stmt->execute() === TRUE) {
                    $result = "Successfully Deleted";
                    $this->ActionLog->saveLogs('product', 'saved');
                } else {
                    $result = "Error: <br>" . $this->conn->error;
                }
            }

        }
        $this->conn->close();
        return $result;
    }

    public function checkSerialNumbers($serial_number)
    {
            $sql = "SELECT * FROM products WHERE SERIAL_NUMBER = '$serial_number'";
            $result = $this->conn->query($sql);
            if($result->num_rows > 0) {
                return $result->fetch_assoc();
            } else {
                return false;
            }
        return $result;
    }
}