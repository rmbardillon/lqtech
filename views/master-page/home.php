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
            <!-- <div class="col d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                <canvas id="transactionIn"></canvas>
            </div> -->
            <div class="card col mb-2 ms-2">
                <div class="card-body">
                    <div class="d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                        <canvas id="transactionIn"></canvas>
                    </div>
                </div>
            </div>
            <div class="card col mb-2 ms-2">
                <div class="card-body">
                    <div class="d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                        <canvas id="transactionOut"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-3"></div>
            <div class="card col-6">
                <div class="card-body">
                    <div class="d-flex justify-content-center align-items-center" style="position: relative; height:400px; width:800px">
                        <canvas id="productChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script type="module" src="../../libs/scripts/master-page/home.js"></script>
</body>
</html>