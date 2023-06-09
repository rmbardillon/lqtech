<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);

include_once('ActionLog.php');

class Category
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
        $sql = "SELECT * from models ORDER BY CATEGORY ASC, MODEL ASC";
        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getBrandTableData()
    {
        $sql = "SELECT * from brands ORDER BY CATEGORY ASC, BRAND ASC";
        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getByCategory($category)
    {
        $sql = "SELECT * from models WHERE CATEGORY = '$category' ORDER BY CATEGORY ASC, MODEL ASC";
        $result = $this->conn->query($sql);

        $this->conn->close();
        $rows = $result->fetch_all(MYSQLI_ASSOC);

        return $rows;
    }

    public function getBrandSelectData($category)
    {
        $sql = "SELECT * from brands WHERE CATEGORY = '$category' ORDER BY CATEGORY ASC, BRAND ASC";
        $result = $this->conn->query($sql);

        $this->conn->close();
        $rows = $result->fetch_all(MYSQLI_ASSOC);

        return $rows;
    }

    public function getById($model_id)
    {
        $sql = "SELECT * FROM models WHERE MODEL_ID = '$model_id'";
        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_assoc();
    }

    public function getBrandById($brand_id)
    {
        $sql = "SELECT * FROM brands WHERE BRAND_ID = '$brand_id'";
        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_assoc();
    }

    // public function save($request)
    // {
    //     $model_name = $request['name'];
    //     // $values_array = explode("\n", $model_name);
    //     // foreach($values_array as $model) {
    //         $sql = "INSERT INTO models(MODEL) VALUES (?)";

    //         $stmt = $this->conn->prepare($sql);
    //         $stmt->bind_param("s",$model_name);

    //         $result = '';
    //         if ($stmt->execute() === TRUE) {
    //             $result = "Successfully Save";

    //             $this->ActionLog->saveLogs('category', 'saved');
    //         } else {
    //             $result = "Error: <br>" . $this->conn->error;
    //         }

    //     // }
    //     $this->conn->close();

    //     return $result;
    // }

    public function save($request)
    {
        $model_name = $request['name'];
        $category = $request['category'];
        $specification = $request['specification'];

        $values_array = explode("\n", $model_name);
        foreach($values_array as $model) {
            if(trim($model) === "") {
                continue;
            }
            if($specification === 'Brand'){
                $sql = "INSERT INTO brands(CATEGORY, BRAND) VALUES (?, ?)";
            } else {
                $sql = "INSERT INTO models(CATEGORY, MODEL) VALUES (?, ?)";
            }

            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ss",$category, $model);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Successfully Save";

                $this->ActionLog->saveLogs('category', 'saved');
            } else {
                $result = "Error: <br>" . $this->conn->error;
            }

        }
        $this->conn->close();

        return $result;
    }

    public function update($request)
    {
        $model_id = $request['id'];
        $model_name = $request['name'];
        $category = $request['category'];
        $specification = $request['specification'];

        if($specification == 'Brand'){
            $sql = "UPDATE brands SET BRAND=?, CATEGORY = ? WHERE BRAND_ID=?";
        } else {
            $sql = "UPDATE models SET MODEL=?, CATEGORY = ? WHERE MODEL_ID=?";
        }

        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("sss",$model_name, $category, $model_id);

        $result = '';
        if ($stmt->execute() === TRUE) {
            $result = "Updated Successfully";

            $this->ActionLog->saveLogs('category', 'updated');
        } else {
            $result = "Error updating record: " . $this->conn->error;
        }

        $this->conn->close();

        return $result;
    }

    public function delete($model_id)
    {
        $sql = "DELETE FROM models WHERE MODEL_ID='$model_id'";

        $result = '';
        if ($this->conn->query($sql) === TRUE) {
            $result = "Deleted Successfully";

            $this->ActionLog->saveLogs('category', 'deleted');
        } else {
            $result = "Error deleting record: " . $this->conn->error;
        }

        $this->conn->close();

        return $result;


    }

    public function deleteBrand($brand_id)
    {
        $sql = "DELETE FROM brands WHERE BRAND_ID='$brand_id'";

        $result = '';
        if ($this->conn->query($sql) === TRUE) {
            $result = "Deleted Successfully";

            $this->ActionLog->saveLogs('category', 'deleted');
        } else {
            $result = "Error deleting record: " . $this->conn->error;
        }

        $this->conn->close();

        return $result;


    }
}
