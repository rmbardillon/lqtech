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
        <div class="row">
            <div class="col d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                <canvas id="transactionIn"></canvas>
            </div>
            <div class="col d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                <canvas id="transactionOut"></canvas>
            </div>
        </div>
        <div class="row">
            <div class="col d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                <canvas id="productChart"></canvas>
            </div>
            <div class="col d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                <canvas id="chart"></canvas>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script type="module" src="../../libs/scripts/master-page/home.js"></script>
</body>
</html>