<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Home";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Hello World</h1>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>