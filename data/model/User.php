<?php 

    class User {
        private $connection;

        public function __construct($connection)
        {
            $this->connection = $connection;
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
    }
?>