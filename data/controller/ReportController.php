<?php
    include_once('../../config/database.php');
    include_once('../model/Report.php');

    $action = $_GET['action'];
    $Report = new Report($conn);
    
    if($action == "1")
    {
        $from = $_POST['fromDate'];
        $to = $_POST['toDate'];
        $result = $Report->getReport1($from, $to);

        echo json_encode($result);
    }

    else if ($action == '2')
    {
        $from = $_POST['from'];
        $to = $_POST['to'];
        $result = $Report->getReport2($from, $to);

        echo json_encode($result);
    }

    else if ($action == '3')
    {
        $from = $_POST['from'];
        $to = $_POST['to'];
        $result = $Report->getReport3($from, $to);

        echo json_encode($result);
    }
?>