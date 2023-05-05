<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Admin";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    } else if($_SESSION['user']['role'] === 3) {
        header("Location: home.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <section class="section user">
            <div class="container-fluid section__body">
                <div class="row">
                    <div class="col-lg-8 col-md-12 ">
                        <div class="user__table-wrapper">
                            <h2 class="section__sub-title">List of Accounts</h2>

                            <div class="table-wrapper">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>username</th>
                                            <th>Role</th>
                                            <th>Status</th>
                                            <th>Last Login</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody_users">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="user__form-wrapper">
                            <h2 class="section__sub-title" id="lbl_title">Create Account</h2>
                            <form class="row g-3" novalidate>
                                <div class="col-md-12">
                                    <label for="username" class="form-label required">First Name</label>
                                    <input type="text" class="form-control" id="txt_first_name" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="lastName" class="form-label required">Last Name</label>
                                    <input type="text" class="form-control" id="txt_last_name" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="newpassword" class="form-label required" id="pwd">Password</label>
                                    <input type="password" class="form-control" id="txt_newpassword" required>
                                    <div id="password-requirements" style="display: none;">
                                        <input type="checkbox" id="length" disabled><span id="pass-length">At least 8 characters</span><br>
                                        <input type="checkbox" id="uppercase" disabled><span id="pass-uppercase">Contains at least one uppercase letter</span><br>
                                        <input type="checkbox" id="lowercase" disabled><span id="pass-lowercase">Contains at least one lowercase letter</span><br>
                                        <input type="checkbox" id="digit" disabled><span id="pass-digit">Contains at least one number</span><br>
                                        <input type="checkbox" id="specialchar" disabled><span id="pass-specialchar">Contains at least one special character</span><br>
                                    </div>
                                    <div id="password-validation"></div>
                                </div>
                                <div class="col-md-12">
                                    <label for="confirmPassword" class="form-label required" id="confirmPwd">Confirm Password</label>
                                    <input type="password" class="form-control" id="txt_confirm_password" required>
                                    <div class="error-message text-danger"></div>
                                </div>
                                <div class="col">
                                    <label for="role" class="form-label required">Role</label>
                                    <select id="role" class="form-select" required>
                                        <option value="" disabled selected>Choose...</option>
                                        <option value="2">Admin</option>
                                        <option value="3">User</option>
                                    </select>
                                </div>
                                <div class="col-12">
                                    <div id="error-message" class='text-danger'></div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" id="btn_save" onclick="Admin.clickSaveButton()" class="btn form-control btn-primary">Register User</button>
                                </div>
                                <div class="col-12">
                                    <button type="submit" id="btn_cancel" onclick="Admin.resetFields()" class="btn form-control btn-warning">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <?php include_once("../layout/scripts.php") ?>
    <script src="../../libs/scripts/master-page/admin.js" ></script>
    </body>
    </html>