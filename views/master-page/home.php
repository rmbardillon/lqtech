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
            <div class="col-12">
                <h2 class="section__sub-title">Installation Date</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="col-1">#</th>
                            <th class="col-3">Project Name</th>
                            <th class="col-2">Contact Person</th>
                            <th class="col-2">Contact Number</th>
                            <th class="col-2">Estimated Date</th>
                            <th class="col-2">Days before Installation</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_estimated_date_alert">
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <canvas id="transactionIn"></canvas>
            </div>
            <div class="col">
                <canvas id="transactionOut"></canvas>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/home.js"></script>
</body>
</html>