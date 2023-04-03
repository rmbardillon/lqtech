<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Register";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <div class="row">
        <div class="col-lg-5 offset-lg-3" style="margin-left: 35px;">
            <div style="padding-right: 0px;padding-bottom: 0px;margin-left: 25px;margin-right: 0px;">
                <p style="font-family: Ubuntu, sans-serif;font-weight: bold;font-style: italic;">Product Registration</p>
                <div class="row">
                    <div class="col">
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
                </div>
                <form id="input_product_form">
                    <div id="inputs"></div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col">
                            <button class="btn btn-primary w-100" type="button" onclick="Product.clickSaveButton()"><i class="far fa-check-circle"></i>Register</button>
                        </div>
                        <div class="col">
                            <button class="btn btn-danger w-100" type="button" onclick="Product.resetFields()"><i class="far fa-times-circle"></i>Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col" style="margin-right: 35px;">
            <div class="row">
                <div class="col">
                    <p style="font-family: Ubuntu, sans-serif;"><strong><em>Product List</em></strong></p>
                    <div data-reflow-type="product-search"></div>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-bottom: -53px;">
                    <div class="table-responsive" style="margin-bottom: 67px;padding-bottom: 0px;">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th style="font-family: Ubuntu, sans-serif;">No.</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Category</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Brand</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Model</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Serial Number</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Price</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Action</th>
                                </tr>
                            </thead>
                            <tbody id="tbody_product">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/add-item.js"></script>
</body>
</html>
