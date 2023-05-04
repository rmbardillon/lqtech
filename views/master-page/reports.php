<?php include_once("../layout/header.php") ?>
<?php 
    $page = "Reports";
    if(!$_SESSION['user']) {
        header("Location: login.php"); 
    }
?>
<body>
    <?php include_once("../layout/nav.php") ?>
    <div class="container mt-5">
        <h1>Reports</h1>
        <div class="row mb-3">
            <div class="col">
                <label class="form-label" for="from">From</label>
                <input class="form-control" type="date" name="from" id="from">
            </div>
            <div class="col">
                <label class="form-label" for="to">To</label>
                <input class="form-control" type="date" name="to" id="to">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <label class="form-label" for="selectReport">Select Type of Report</label>
                <select class="form-select" name="selectReport" id="selectReport">
                    <option value="" disabled selected>Please Select</option>
                    <option value="1">Total In and Out of each Items</option>
                    <option value="2">Total Installs</option>
                    <option value="3">Total Sales of each Salesman</option>
                </select>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <button class="btn btn-success" id="generateReport">Generate Report</button>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/reports.js"></script>
</body>
</html>