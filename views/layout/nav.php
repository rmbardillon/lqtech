<nav class="navbar navbar-expand-lg navbar-light bg-white shadow px-3 sticky-top">
  <a class="navbar-brand" href="../master-page/home.php">
    <img src="../../libs/images/lqtechlogo.png" alt="hikvision icon" style="height: 45px; width: 100px;">
  </a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link <?php echo ($page == "Home") ? 'active' : '' ?>" href="../master-page/home.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link <?php echo ($page == "Admin") ? 'active' : '' ?>" href="../master-page/admin.php">Admin</a>
      </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle  <?php echo ($page == "Register") ? 'active' : '' ?>" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Register
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/add-model.php">Model</a></li>
                <li><a class="dropdown-item" href="../master-page/add-product.php">Product</a></li>
            </ul>
        </li>
      <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle  <?php echo ($page == "Transaction") ? 'active' : '' ?>" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Transaction
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/insert-product.php">In</a></li>
                <li><a class="dropdown-item" href="../master-page/out-product.php">Out</a></li>
            </ul>
        </li>
    <li class="nav-item">
        <a class="nav-link  <?php echo ($page == "Products") ? 'active' : '' ?>" href="../master-page/products.php">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link  <?php echo ($page == "Stocks") ? 'active' : '' ?>" href="../master-page/stocks.php">Stocks</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link report <?php echo ($page == "Reports") ? 'report-active' : '' ?>" href="../master-page/reports.php"><i class="fas fa-download "></i>Reports</a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle <?php echo ($page == "Profile") ? 'active' : '' ?>" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Profile
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/action-logs.php">Action Logs</a></li>
                <li><a class="dropdown-item" href="../master-page/change-password.php">Change Password</a></li>
                <li><a class="dropdown-item" href="" onclick="logout()">Log Out</a></li>
            </ul>
        </li>
      <li class="nav-item">
        <span class="badge rounded-pill bg-danger" style="float:right;margin-bottom:-5px;"></span>
        <a class="nav-link  <?php echo ($page == "Alerts") ? '' : '' ?>" href="../master-page/alerts.php"><i class="bi bi-bell"></i></a>
      </li>
    </ul>
  </div>
</nav>
