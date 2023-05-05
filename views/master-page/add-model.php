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
        <!-- <h1>Add Model</h1> -->
        <section class="section user">
            <div class="container-fluid section__body">
                <div class="row">
                    <div class="col-lg-6 col-md-12 ">
                        <div class="user__table-wrapper">
                            <h2 class="section__sub-title">Register Model</h2>

                            <div class="form-wrapper">
                                <form class="row g-3">
                                    <div class="col-md-12">
                                        <label for="modelCategory" class="form-label required">Category</label>
                                        <select class="form-select" id="category">
                                            <option value="" disabled selected>- Select Category -</option>
                                            <option value="Camera">Camera</option>
                                            <option value="Recorder">Recorder</option>
                                            <option value="Hard drive">Hard drive</option>
                                            <option value="Power Supply">Power Supply</option>
                                            <option value="Monitor">Monitor</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="productBarcode" class="form-label required">Model Name</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            </div>
                                            <textarea class="form-control" id="txt_category_name" cols="30" rows="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit" id="btn_save_category" onclick="Category.clickSaveButton()" class="btn form-control btn-primary mb-1">Register Model</button>
                                        <button  onclick="Category.clickCancel()" class="btn form-control btn-warning">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5 offset-lg-1">
                        <div class="table-wrapper">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Model Name</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody id = 'tbody_category'>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/add-item.js"></script>
</body>
</html>