<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Alerts";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Alerts</h1>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>