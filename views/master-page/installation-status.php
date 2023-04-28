<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Installation Status";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <div id="modal_installation_status" class="modal" role="dialog">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="installationFormID">Installation Form ID: </h4>
                        <button type="button" class="btn btn-primary disabled" id="viewForm">View Installation Form</button>
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
                                <div class="col">
                                    <b>JOB ORDER NUMBER:</b> <span class="jobOrderNumberValue"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <b>NOTE:</b> <p class="noteValue"></p>
                                </div>
                            </div>
                        </form>    
                        <hr>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Item Model</th>
                                    <th>Serial Numbers</th>
                                    <th>Quantity</th>
                                </tr>
                            </thead>
                            <tbody id="installation_items">
                                
                            </tbody>
                        </table>                
                    </div>
                    <div class="modal-footer">
                        <div class="dropdown" id="actionButtons" style="display: none;">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonAction" data-bs-toggle="dropdown" aria-expanded="false">
                                Action
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonAction">
                                <li><a class="dropdown-item" id="confirmTransaction">Confirm Transaction</a></li>
                                <li><a class="dropdown-item" id="processReturns" onclick="installationStatus.processReturns();">Process Returns</a></li>
                                <li><a class="dropdown-item" id="cancelTransaction" onclick="installationStatus.cancelTransaction();">Cancel Transaction</a></li>
                            </ul>
                        </div>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="processReturnModal" class="modal" role="dialog">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" class="installationFormID">Process Return</h4>
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
                                <div class="col">
                                    <b>JOB ORDER NUMBER:</b> <span class="jobOrderNumberValue"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <b>NOTE:</b> <p class="noteValue"></p>
                                </div>
                            </div>
                        </form>    
                        <hr>
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
                    <div class="modal-footer">
                        <div class="dropdown" id="actionButtons" style="display: none;">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonAction" data-bs-toggle="dropdown" aria-expanded="false">
                                Action
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonAction">
                                <li><a class="dropdown-item" id="confirmTransaction">Confirm Transaction</a></li>
                                <li><a class="dropdown-item" id="processReturns" onclick="installationStatus.processReturns();">Process Returns</a></li>
                                <li><a class="dropdown-item" id="cancelTransaction" onclick="installationStatus.cancelTransaction();">Cancel Transaction</a></li>
                            </ul>
                        </div>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="confirmTransactionModal" class="modal" role="dialog">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" class="installationFormID">Confirm Transaction</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="transmittedBy" placeholder="TRANSMITTED BY" required>
                                    <label class="form-label required" for="transmittedBy">TRANSMITTED BY</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="salesOrderNumber" placeholder="SALES ORDER NUMBER" required readonly>
                                    <label class="form-label required" for="salesOrderNumber">SALES ORDER NUMBER</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="jobOrderNumber" placeholder="JOB ORDER NUMBER" required>
                                    <label class="form-label required" for="jobOrderNumber">JOB ORDER NUMBER</label>
                                </div>
                            </div>
                        </div>           
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-success" onclick="installationStatus.confirmTransaction();">Next</button>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <h1>Installation Status</h1>
        <div class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                            <th style="font-family: Ubuntu, sans-serif;">No.</th>
                            <th style="font-family: Ubuntu, sans-serif;">Project Name</th>
                            <th style="font-family: Ubuntu, sans-serif;">Date</th>
                            <th style="font-family: Ubuntu, sans-serif;">Contact Person</th>
                            <th style="font-family: Ubuntu, sans-serif;">Contact Number</th>
                            <th style="font-family: Ubuntu, sans-serif;">Project Site</th>
                            <th style="font-family: Ubuntu, sans-serif;">Salesman / Branch</th>
                            <th style="font-family: Ubuntu, sans-serif;">Installer</th>
                            <th style="font-family: Ubuntu, sans-serif;">Sales Order Number</th>
                            <th style="font-family: Ubuntu, sans-serif;">Job Order Number</th>
                            <th style="font-family: Ubuntu, sans-serif;">Service</th>
                            <th style="font-family: Ubuntu, sans-serif;">Status</th>
                            <th style="font-family: Ubuntu, sans-serif;">Action</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_installation_status">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/installation-status.js"></script>
</body>
</html>