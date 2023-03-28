<?php 
    $host = 'localhost';
    $username = 'root';
    $password = '';
    $db_name = 'lqtech';

    $connection = new mysqli($host, $username, $password, $db_name);

    if ($connection->connect_error) {
        die("Connection failed: " . connection->connect_error);
    }


    CONST DEFAULT_PASSWORD = 'default123';

    session_start();
?>