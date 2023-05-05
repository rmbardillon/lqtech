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
        <table class="table">
            <thead>
                <th>No.</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Total Stocks</th>
                <th>Action</th>
            </thead>
            <tbody id="stocks_table"></tbody>
        </table>
    </div>

    <!-- Product Stock Modal -->
    <div class="modal" id="stockModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead>
                            <th>Date</th>
                            <th>In</th>
                            <th>Out</th>
                            <th>Total Stocks</th>
                        </thead>
                        <tbody id="stock_table"></tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                </div>
            </div>
        </div>
    </div>

<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/stocks.js"></script>
</body>
</html>