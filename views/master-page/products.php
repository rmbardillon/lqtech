<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Products";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Products</h1>
        <div class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                            <th style="font-family: Ubuntu, sans-serif;">No.</th>
                            <th style="font-family: Ubuntu, sans-serif;">Category</th>
                            <th style="font-family: Ubuntu, sans-serif;">Brand</th>
                            <th style="font-family: Ubuntu, sans-serif;">Model</th>
                            <th style="font-family: Ubuntu, sans-serif;">Quantity</th>
                            <th style="font-family: Ubuntu, sans-serif;">Selling Price</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_product">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/product.js"></script>
</body>
</html>