<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Transaction";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <!-- Installation Form Modal -->
    <div id="formModal" class="modal" role="dialog" data-bs-backdrop="static">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Installation Form</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row mb-3">
                            <div class="col col-8">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="projectName" placeholder="PROJECT NAME" required>
                                    <label class="form-label required" for="projectName">PROJECT NAME</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <input class="form-control" type="text" id="date" readonly>
                                    <label class="form-label" for="date">DATE</label> 
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col col-8">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="contactPerson" placeholder="CONTACT PERSON" maxlength="64" required>
                                    <label class="form-label required" for="contactPerson">CONTACT PERSON</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control telephone numbers" id="contactNumber" value="09" required>
                                    <label class="form-label required" for="contactNumber">CONTACT NUMBER</label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="projectSite" placeholder="PROJECT SITE" required>
                                    <label class="form-label required" for="projectSite">PROJECT SITE</label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="salesManBranch" placeholder="SALESMAN / BRANCH" required>
                                    <label class="form-label required" for="salesManBranch">SALESMAN / BRANCH</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="installer" placeholder="INSTALLER" required>
                                    <label class="form-label required" for="installer">INSTALLER</label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="salesOrderNumber" placeholder="SALES ORDER NUMBER" maxlength="16">
                                    <label class="form-label" for="salesOrderNumber">SALES ORDER NUMBER</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <select class="form-select" name="service" id="service" required>
                                        <option value="" selected disabled>Please select service</option>
                                        <option value="Multicab">Multicab</option>
                                        <option value="Avanza">Avanza</option>
                                        <option value="Mirage">Mirage</option>
                                        <option value="L300 (New)">L300 (New)</option>
                                        <option value="L300 (Old)">L300 (Old)</option>
                                    </select>
                                    <label class="form-label required" for="service">Service</label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-floating">
                                    <input type="date" class="form-control" name="estimatedDate" name="estimatedDate" id="estimatedDate" placeholder="ESTIMATED DATE">
                                    <label class="form-label required" for="estimatedDate">ESTIMATED DATE</label>
                                </div>
                            </div>
                            <div class="col">   
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="note" name="note" id="note" placeholder="NOTE" maxlength="128">
                                    <label class="form-label" for="note">NOTE</label>
                                </div>
                            </div>
                        </div>
                    </form>    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" id="confirmForm">Next</button>
                    <button type="button" class="btn btn-danger" id="closeModal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Confirm Installation Form Modal -->
    <div id="confirmFormModal" class="modal" role="dialog" data-bs-backdrop="static">
        <div class="modal-dialog modal-xl">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Form Confirmation</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col text-truncate">
                                <b>PROJECT NAME:</b> <span class="projectNameValue"></span>
                            </div>
                            <div class="col">
                                <b>DATE:</b> <span class="dateValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 text-truncate">
                                <b>CONTACT PERSON:</b> <span class="contactPersonValue"></span>
                            </div>
                            <div class="col-6">
                                <b>CONTACT NUMBER:</b> <span class="contactNumberValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-truncate">
                                <b>PROJECT SITE:</b> <span class="projectSiteValue"></span>
                            </div>
                            <div class="col text-truncate">
                                <b>SALESMAN / BRANCH:</b> <span class="salesManBranchValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-truncate">
                                <b>INSTALLER:</b> <span class="installerValue"></span>
                            </div>
                            <div class="col">
                                <b>SERVICE:</b> <span class="serviceValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>SALES ORDER NUMBER:</b> <span class="salesOrderNumberValue"></span>
                            </div>
                            <div class="col text-truncate">
                                <b>NOTE:</b> <span class="noteValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>ESTIMATED DATE OF INSTALLATION:</b> <span class="estimatedDateValue"></span>
                            </div>
                        </div>
                    </form>    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" id="submitInstallationForm">Confirm</button>
                    <button type="button" class="btn btn-danger" id="back">Back</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout Modal -->
    <div id="checkoutModal" class="modal" role="dialog">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col">
                                <b>PROJECT NAME:</b> <span class="projectNameValue"></span>
                            </div>
                            <div class="col">
                                <b>DATE:</b> <span class="dateValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>CONTACT PERSON:</b> <span class="contactPersonValue"></span>
                            </div>
                            <div class="col">
                                <b>CONTACT NUMBER:</b> <span class="contactNumberValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>PROJECT SITE:</b> <span class="projectSiteValue"></span>
                            </div>
                            <div class="col">
                                <b>SALESMAN/BRANCH:</b> <span class="salesManBranchValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>INSTALLER:</b> <span class="installerValue"></span>
                            </div>
                            <div class="col">
                                <b>SERVICE:</b> <span class="serviceValue"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>SALES ORDER NUMBER:</b> <span class="salesOrderNumberValue"></span>
                            </div>
                        </div>
                    </form>    
                    <hr>
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
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- POS -->
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
                    <!-- Current Cart Table -->
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
            <!-- Products cart Table -->
            <div class="col">
                <form>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Quantity</th>
                                <th>SKU</th>
                                <th>Model</th>
                                <th class="no-sort">Actions</th>
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