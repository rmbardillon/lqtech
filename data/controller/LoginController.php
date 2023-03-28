<?php
    include_once('../../config/database.php');
    include_once('../model/User.php');

    $action = $_GET['action'];
    
    if($action == "login"){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $user = new User($connection);
        $request = [
            'username' => $username,
            'password' => $password
        ];
        $result = $user->login($request);

        echo json_encode($result);
    }
?>