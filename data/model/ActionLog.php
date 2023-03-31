<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);

class ActionLog
{
    private $conn;

    public function __construct($connection)
    {
        $this->conn = $connection;
    }

    public function getAll()
    {
        $sql = "SELECT DATE_TIME, action_logs.ROLE, action_logs.USER_ID, ACTION, USERNAME 
        FROM action_logs 
        INNER JOIN users ON action_logs.USER_ID = users.USER_ID 
        WHERE action_logs.USER_ID = '" . $_SESSION['user']['id'] . "'";
        $result = $this->conn->query($sql);


        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function save($request)
    {
        $datetime = $request['datetime'];
        $role = $request['role'];
        $username = $request['username'];
        $action = $request['action'];

        $sql = "INSERT INTO action_logs(DATE_TIME,ROLE,USER_ID,ACTION) VALUES (?,?,?,?)";

        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssss",$datetime,$role,$username,$action);

        $result = '';
        if ($stmt->execute() === TRUE) {
            $result = "Successfully Save";
        } else {
            $result = "Error: <br>" . $this->conn->error;
        }

        return $result;
    }

    public function saveLogs($method, $action = null)
    {
        $role = $_SESSION['user']['role'];

        $request = [
            'datetime' => date("Y-m-d H:i:s"),
            'role' => $role,
            'username' => $_SESSION['user']['id'],
            'action' => ''
        ];


        switch ($method) {
            case 'category':
                $request['action'] = 'Successfully ' . $action . ' the Category';
                break;
            case 'product':
                $request['action'] = 'Successfully ' . $action . ' the Product';
                break;
            case 'product_details':
                $request['action'] = 'Successfully ' . $action . ' the Product details';
                break;
            case 'user':
                $request['action'] = 'Successfully ' . $action . ' the User';
                break;
            case 'invoice':
                $request['action'] = 'Successfully ' . $action . ' the Invoice';
                break;
            case 'login':
                $request['action'] = 'User has logged in';
                break;
            case 'logout':
                $request['action'] = 'User has logged out';
                break;
            case 'void':
                $request['action'] = 'Successfully void the item';
                break;
            default:
                # code...
                break;
        }

        $this->save($request);
    }
}
