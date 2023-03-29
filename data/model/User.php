<?php 

    class User {
        private $connection;

        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function getAll()
        {
            $sql = "SELECT * from users where ROLE != 1";
            $result = $this->connection->query($sql);

            $this->connection->close();
            return $result->fetch_all(MYSQLI_ASSOC);
        }

        public function getById($user_id)
        {
            $sql = "SELECT * FROM users WHERE USER_ID = '$user_id'";
            $result = $this->connection->query($sql);

            $this->connection->close();
            return $result->fetch_assoc();
        }

        public function update($request)
        {
            $user_id = $request['user_id'];
            $first_name = $request['first_name'];
            $last_name = $request['last_name'];
            $role = $request['role'];

            $sql = "UPDATE users SET FIRST_NAME=?, LAST_NAME=?, ROLE=? WHERE USER_ID=?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("ssis", $first_name, $last_name, $role, $user_id);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Updated Successfully";
            } else {
                $result = "Error updating record: " . $this->connection->error;
            }

            $this->connection->close();

            return $result;
        }

        public function delete($user_id)
        {
            $sql = "DELETE FROM users WHERE USER_ID='$user_id'";

            $result = '';
            if ($this->connection->query($sql) === TRUE) {
                $result = "Deleted Successfully";
            } else {
                $result = "Error deleting record: " . $this->connection->error;
            }

            $this->connection->close();

            return $result;
        }
        
        public function udpate_login_details($user_id)
        {
            date_default_timezone_set("Asia/Singapore");
            $last_login = date('Y-m-d H:i:s A');

            $sql = "UPDATE users SET LAST_LOGIN=? WHERE USER_ID=?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("ss", $last_login, $user_id);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Updated Successfully";
            } else {
                $result = "Error updating record: " . $this->conn->error;
            }

            return $result;
        }

        public function update_login_attempt($user_id, $login_attempt)
        {

            $sql = "UPDATE users SET LOGIN_ATTEMPTS=? WHERE USER_ID=?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("is", $login_attempt, $user_id);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Updated Successfully";
            } else {
                $result = "Error updating record: " . $this->conn->error;
            }

            return $result;
        }

        public function update_status($user_id, $status)
        {

            $sql = "UPDATE users SET IS_LOCKED=? WHERE USER_ID=?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("is", $status, $user_id);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Updated Successfully";
            } else {
                $result = "Error updating record: " . $this->conn->error;
            }

            return $result;
        }
        public function login($request)
        {
            $username = $request['username'];
            $password = $request['password'];

            $sql = "SELECT USER_ID, FIRST_NAME, LAST_NAME, USERNAME, PASSWORD, ROLE, LOGIN_ATTEMPTS, IS_LOCKED FROM users where USERNAME = ?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("s", $username);
            $stmt->execute();


            $user_id = "";
            $first_name = "";
            $last_name = "";
            $username = "";
            $db_password = "";
            $role = "";
            $login_attempts = "";
            $is_locked = "";
            $stmt->bind_result($user_id, $first_name, $last_name, $username, $db_password, $role, $login_attempts, $is_locked);
            $stmt->fetch();


            if ($is_locked == 1) {
                return "Account is deactivated";
            } else if (password_verify($password, $db_password)) {
                $stmt->free_result();

                $_SESSION['user'] = [
                    'id' => $user_id,
                    'fullname' => $first_name . ' ' . $last_name,
                    'role' => $role,
                    'username' => $username,
                    'password' => $password,
                ];
                $this->update_login_attempt($user_id, 0);
                $this->udpate_login_details($user_id);

                return "Validated";
            } else {
                $stmt->free_result();

                $login_attempts += 1;
                if ($role != 1) {
                    $this->update_login_attempt($user_id, $login_attempts);
                }
                if ($login_attempts == 3) {
                    $this->update_status($user_id, 1);
                    return "Your Account has been lock due to many attempts. Please contact Administrator.";
                }
                return "Invalid Username or Password";
            }
        }

        public function save($request)
        {
            $first_name = $request['first_name'];
            $last_name = $request['last_name'];
            $username = $request['username'];
            $password = $request['password'];
            $role = $request['role'];

            $password = password_hash($password, PASSWORD_BCRYPT);

            $sql = "INSERT INTO users(FIRST_NAME, LAST_NAME, USERNAME, PASSWORD, ROLE) 
            VALUES (?,?,?,?,?)";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("sssss", $first_name, $last_name, $username, $password, $role);

            $result = '';
            if ($stmt->execute() === TRUE) {
                $result = "Successfully Save";
                // $this->ActionLog->saveLogs('user', 'saved');
            } else {
                $result = "Error: <br>" . $this->connection->error;
            }

            $this->connection->close();

            return $result;
        } 
    }
?>