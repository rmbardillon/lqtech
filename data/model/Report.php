<?php 
    include_once('ActionLog.php');
    class Report {
        private $conn;

        public function __construct($connection)
        {
            $this->conn = $connection;
            $this->ActionLog = new ActionLog($connection);
        }

        public function getReport1($from, $to)
        {
            $sql = "SELECT *, COUNT(*) FROM sales 
                    LEFT JOIN product_details ON sales.PRODUCT_DETAILS_ID = product_details.PRODUCT_DETAILS_ID
                    WHERE sales.STATUS = 'OUT' AND DATE_PURCHASED BETWEEN '$from' AND '$to'
                    GROUP BY sales.PRODUCT_DETAILS_ID;";
            $result = $this->conn->query($sql);

            return $result->fetch_all(MYSQLI_ASSOC);
        }

        public function getReport2($from, $to)
        {
            $sql = "SELECT * FROM installation_form
                    WHERE STATUS = 'Success' AND DATE_TIME BETWEEN '$from' AND '$to';";
            $result = $this->conn->query($sql);

            return $result->fetch_all(MYSQLI_ASSOC);
        }

        public function getReport3($from, $to)
        {
            $sql = "SELECT *, COUNT(*) AS TOTAL FROM installation_form
                    WHERE STATUS = 'Success' AND DATE_TIME BETWEEN '$from' AND '$to'
                    GROUP BY INSTALLER;";
            $result = $this->conn->query($sql);

            return $result->fetch_all(MYSQLI_ASSOC);
        }
    }
?>