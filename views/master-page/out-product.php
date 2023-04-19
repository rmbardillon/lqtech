<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Transaction";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div id="myModal" class="modal" role="dialog">
        <div class="modal-dialog modal-xl">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Quantity</th>
                                <th>SKU</th>
                                <th>Model</th>
                            </tr>
                        </thead>
                        <tbody id="checkout_table">
                            
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3" class="text-right">
                                    <h4>Total Items: <span id="total"></span></h4>
                                </td>
                            </tr>
                        </tfoot>
                    </table>                
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" id="checkout_confirm">Confirm</button>
                    <button type="button" class="btn btn-danger pos_close">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <h1>Out Product</h1>
        <div class="row">
            <div class="col">
                <form class="">
                    <div class="mb-3">
                        <input class="form-control" type="text" id="sku" placeholder="SKU" autofocus>
                    </div>
                    <div class="mb-3">
                        <input class="form-control" type="text" id="model" placeholder="Model" readonly>
                    </div>
                    <div class="mb-3">    
                        <textarea class="form-control" name="" id="serial_numbers" cols="30" rows="10" placeholder="Serial Numbers"></textarea>
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary w-100" type="button" id="addToCart">Add to Cart</button>
                    </div>
                    <div class="mb-3">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Quantity</th>
                                    <th>SKU</th>
                                    <th>Model</th>
                                </tr>
                            </thead>
                            <tbody id="item_list"></tbody>
                        </table>
                    </div>
                </form>
            </div>
            <div class="col">
                <form>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Quantity</th>
                                <th>SKU</th>
                                <th>Model</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="cart"></tbody>
                    </table>
                    <div class="mt-4">
                        <button class="btn btn-success w-100" id="checkout" type="button">Check Out</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/out-item.js"></script>
</body>
</html>