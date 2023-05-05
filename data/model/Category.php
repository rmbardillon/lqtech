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
        $sql = "SELECT MODEL_ID, MODEL from models";
        $result = $this->conn->query($sql);

        $this->conn->close();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getById($model_id)
    {
        $sql = "SELECT * FROM models WHERE MODEL_ID = '$model_id'";
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
        $values_array = explode("\n", $model_name);
        foreach($values_array as $model) {
            if(trim($model) === "") {
                continue;
            }
            $sql = "INSERT INTO models(CATEGORY, MODEL) VALUES (?, ?)";

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

        $sql = "UPDATE models SET MODEL=? WHERE MODEL_ID=?";

        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ss",$model_name, $model_id);

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
}
