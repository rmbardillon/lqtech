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
        <h1>Add Products</h1>
        <div class="row">
        <div class="col-lg-5 offset-lg-3" style="margin-left: 35px;">
            <div style="padding-right: 0px;padding-bottom: 0px;margin-left: 25px;margin-right: 0px;">
                <p style="font-family: Ubuntu, sans-serif;font-weight: bold;font-style: italic;">Product Registration</p>
                <div class="row">
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">Category</p><select class="form-select" style="height: 38.2px;font-family: ubuntu;text-align: left;border-radius: 5px;">
                            <option value="" disabled selected>- Select Category -</option>
                            <option>Analog</option>
                            <option>IP</option>
                            <option>Accessories</option>
                        </select>
                    </div>
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">Product Type</p><select class="form-select" style="height: 38.2px;font-family: ubuntu;text-align: left;border-radius: 5px;">
                            <option value="" disabled selected>- Select Product Type -</option>
                            <option>Video Surveillance</option>
                            <option>Power and Accessories</option>
                            <option>Mounting and Installation</option>
                            <option>Security and Access Control</option>
                            <option>Other</option>
                        </select>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <p>Brand</p><select class="form-select" style="height: 38.2px;font-family: ubuntu;text-align: left;border-radius: 5px;">
                            <option value="" disabled selected>- Select Brand -</option>
                            <option>HikVision</option>
                        </select>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">Model Number</p><input type="number" style="border-radius: 5px;">
                    </div>
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">Serial Number</p><input type="number" style="border-radius: 5px;">
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">Buying Price</p><input type="number" style="border-radius: 5px;">
                    </div>
                    <div class="col">
                        <p style="font-family: Ubuntu, sans-serif;">SellingPrice</p><input type="number" style="border-radius: 5px;">
                    </div>
                </div>
                <div class="row" style="margin-top: 10px;">
                    <div class="col"><button class="btn btn-primary" type="button" style="background: rgb(46, 49, 146);"><i class="far fa-check-circle"></i>&nbsp;Register</button></div>
                    <div class="col"><button class="btn btn-primary" type="button" style="background: #AA1515;"><i class="far fa-times-circle"></i>&nbsp;Cancel</button></div>
                </div>
            </div>
        </div>
        <div class="col" style="margin-right: 35px;">
            <div></div>
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
