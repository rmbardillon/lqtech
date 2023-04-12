<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Transaction";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Insert Product</h1>
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <form action="">
                            <div class="mb-3">
                                <label class="form-label" for="category">Category</label>
                                <select class="form-select" id="category">
                                    <option value="" disabled selected>- Select Category -</option>
                                    <option value="Camera">Camera</option>
                                    <option value="Recorder">Recorder</option>
                                    <option value="Hard drive">Hard drive</option>
                                    <option value="Power Supply">Power Supply</option>
                                    <option value="Monitor">Monitor</option>
                                </select>
                            </div>
                            <div class="mb-3" id="modelDiv">
                                <label class="form-label" for="models">Models</label>
                                <select class="form-select model" name="models" id="models">
                                    <option value="" disabled selected>- Select Model -</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="sku">SKU</label>
                                <input class="form-control" type="text" id="sku">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="serial_number">Serial Numbers</label>
                                <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                            </div>
                            <div class="mb-3">
                                <button class="btn btn-primary w-100" onclick="Product.clickSaveButton()">Insert Product</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                            <!-- <th style="font-family: Ubuntu, sans-serif;">No.</th> -->
                            <th style="font-family: Ubuntu, sans-serif;">Quantity</th>
                            <th style="font-family: Ubuntu, sans-serif;">Category</th>
                            <th style="font-family: Ubuntu, sans-serif;">Brand</th>
                            <th style="font-family: Ubuntu, sans-serif;">Model</th>
                            <th style="font-family: Ubuntu, sans-serif;">SKU</th>
                            <th style="font-family: Ubuntu, sans-serif;">Action</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_product">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/insert-item.js"></script>
</body>
</html>