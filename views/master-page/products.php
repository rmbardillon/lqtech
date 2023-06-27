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
        <div id="productModal" class="modal" role="dialog">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Available Products</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>SKU</th>
                                    <th>Serial Number</th>
                                    <th class="no-sort">Action</th>
                                </tr>
                            </thead>
                            <tbody id="product_table"></tbody>
                        </table>                
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
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
                            <th class="no-sort" style="font-family: Ubuntu, sans-serif;">Action</th>
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