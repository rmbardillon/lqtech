<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);

// mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

include_once('ActionLog.php');

class Stock
{
    private $conn;
    private $ActionLog;

    public function __construct($connection)
    {
        $this->conn = $connection;
        $this->ActionLog = new ActionLog($connection);
    }

    public function getAll()
    {
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, 
                SUM(CASE WHEN p.STATUS = 'IN' THEN 1 ELSE 0 END) as IN_QUANTITY, 
                SUM(CASE WHEN p.STATUS = 'OUT' THEN 1 ELSE 0 END) as OUT_QUANTITY,
                SELLING_PRICE, SKU, p.STATUS, COUNT(*) as QUANTITY
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                GROUP BY pd.PRODUCT_DETAILS_ID
                ORDER BY pd.CATEGORY, pd.BRAND, pd.MODEL;";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getIn()
    {
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU, DATE_INSERTED
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE p.STATUS = 'IN'
                GROUP BY pd.PRODUCT_DETAILS_ID, p.DATE_INSERTED;";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getOut()
    {
        $sql = "SELECT pd.PRODUCT_DETAILS_ID, pd.CATEGORY, pd.BRAND, pd.MODEL, COUNT(*) as QUANTITY, SELLING_PRICE, SKU, DATE_INSERTED
                FROM products p
                JOIN product_details pd ON p.PRODUCT_DETAILS_ID = pd.PRODUCT_DETAILS_ID
                WHERE p.STATUS = 'OUT'
                GROUP BY pd.PRODUCT_DETAILS_ID, p.DATE_INSERTED;";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getById($id)
    {
        $sql = "SELECT * FROM stocks
                LEFT JOIN product_details ON stocks.PRODUCT_ID = product_details.PRODUCT_DETAILS_ID
                WHERE stocks.PRODUCT_ID = '$id'
                GROUP BY stocks.PRODUCT_ID, stocks.DATE_TODAY;";
        $result = $this->conn->query($sql);

        return $result->fetch_all(MYSQLI_ASSOC);
    }
}