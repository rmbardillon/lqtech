<?php 
    session_start();
    if(isset($_SESSION['user'])) {
        header("Location: home.php"); 
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../libs/css/style.css">
    <link rel="shortcut icon" href="../../libs/images/lqtechicon.ico" type="image/x-icon">
    <title>LQTech</title>
</head>
<body>
    <div class="container-fluid text-center d-flex justify-content-center align-items-center" id="login-wrapper">
        <form class="login-box w-25" action="">
            <img src="../../libs/images/lqtechicon.png" alt="LQTech Logo">
            <input type="text" class="form-control mb-2" id="username" placeholder="Username" required>
            <input type="password" class="form-control mb-2" id="password" placeholder="Password" required>
            <button class="btn btn-primary w-100 mb-2" id="login">Login</button>
            <a class="" href="#">Forgot Password?</a>
        </form>
    </div>
    <script src="../../libs/plugins/jquery/jquery-3.6.1.min.js"></script>
    <script src="../../libs/plugins/sweetalert/sweetalert.all.min.js"></script>
    <script src="../../libs/scripts/master-page/login.js"></script>
</body>
</html>