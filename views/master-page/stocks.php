<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Stocks";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Stocks</h1>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>