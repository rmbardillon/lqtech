<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Installation Status";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Installation Status</h1>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>