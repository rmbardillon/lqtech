<nav class="navbar navbar-expand-lg navbar-light bg-white shadow px-3">
  <a class="navbar-brand" href="../master-page/home.php">
    <img src="../../libs/images/hikvisionicon.png" alt="hikvision icon" style="height: 45px; width: 100px;">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="../master-page/home.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../master-page/admin.php">Admin</a>
      </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Register
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/add-product.php">Product</a></li>
                <li><a class="dropdown-item" href="../master-page/add-category.php">Category</a></li>
            </ul>
        </li>
      <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Transaction
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/insert-product.php">In</a></li>
                <li><a class="dropdown-item" href="../master-page/out-product.php">Out</a></li>
            </ul>
        </li>
    <li class="nav-item">
        <a class="nav-link" href="../master-page/products.php">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../master-page/reports.php">Reports</a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Profile
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../master-page/action-logs.php">Action Logs</a></li>
                <li><a class="dropdown-item" href="../master-page/change-password.php">Change Password</a></li>
                <li><a class="dropdown-item" href="" onclick="logout()">Log Out</a></li>
            </ul>
        </li>
      <li class="nav-item">
        <a class="nav-link" href="../master-page/alerts.php">Alerts</a>
      </li>
    </ul>
  </div>
</nav>
