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
                        <button class="btn btn-success" id="checkout_confirm">Confirm</button>
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