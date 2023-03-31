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
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <label class="form-label" for="brand">Brand</label>
                        <input type="text" class="form-control" id="brand">
                    </div>
                    <div class="col">
                        <label class="form-label" for="model">Model</label>
                        <input type="text" class="form-control" id="model">
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <label class="form-label" for="camera_type">Camera Type</label>
                        <input type="text" class="form-control" id="camera_type">
                    </div>
                    <div class="col">
                        <label class="form-label" for="camera_shape">Camera Shape</label>
                        <input type="text" class="form-control" id="camera_shape">
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <label class="form-label" for="buying_price">Buying Price</label>
                        <input class="form-control" type="number" id="buying_price">
                    </div>
                    <div class="col">
                        <label class="form-label" for="selling_price">Selling Price</label>
                        <input class="form-control" type="number" id="selling_price">
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <label class="form-label" for="serial_number">Serial Numbers</label>
                        <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="row" style="margin-top: 10px;">
                    <div class="col">
                        <button class="btn btn-primary w-100" type="button"><i class="far fa-check-circle"></i>Register</button>
                    </div>
                    <div class="col">
                        <button class="btn btn-danger w-100" type="button"><i class="far fa-times-circle"></i>Cancel</button>
                    </div>
                </div>
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
                                    <th style="font-family: Ubuntu, sans-serif;">Product Name</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Bar Code</th>
                                    <th style="font-family: Ubuntu, sans-serif;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>HWI-B121H</td>
                                    <td>JK12498</td>
                                    <td>Cell 2</td>
                                </tr>
                                <tr>
                                    <td>Cell 3</td>
                                    <td>Cell 4</td>
                                    <td>Cell 4</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p style="font-family: Ubuntu, sans-serif;font-style: italic;margin-left: 0px;">showing 1 of 1 entries</p>
                </div>
            </div>
        </div>
    </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
</body>
</html>
