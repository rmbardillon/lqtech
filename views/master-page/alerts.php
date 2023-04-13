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
                                    <th>Action</th>
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