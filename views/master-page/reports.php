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
        <h1>Generate Reports</h1>
        <div class="row mb-3">
            <div class="col">
                <label class="form-label" for="selectMonth">Select Month</label>
                <select class="form-select" name="selectMonth" id="selectMonth">
                    <option value="" disabled selected>Please Select</option>
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">Septemeber</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">Decemeber</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="from">Select From Date</label>
                <input class="form-control" type="date" name="from" id="from">
            </div>
            <div class="col">
                <label class="form-label required" for="to">Select To Date</label>
                <input class="form-control" type="date" name="to" id="to">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <label class="form-label required" for="selectReport">Select Type of Report</label>
                <select class="form-select" name="selectReport" id="selectReport">
                    <option value="" disabled selected>Please Select</option>
                    <option value="1.1">Total In of each Items</option>
                    <option value="1">Total Out of each Items</option>
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