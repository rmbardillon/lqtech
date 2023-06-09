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
        <div class="row">
            <div class="col-lg-12 col-md-12 ">
                <div class="user__table-wrapper">
                    <h2 class="section__sub-title">Installation Date Alerts</h2>
                    <div class="table-wrapper">
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
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 ">
                <div class="user__table-wrapper">
                    <h2 class="section__sub-title">Stock Status</h2>
                    <div class="table-wrapper">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>Quantity</th>
                                    <th>Stock Status</th>
                                    <th class="no-sort">Action</th>
                                </tr>
                            </thead>
                            <tbody id="tbody_stock_status">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>