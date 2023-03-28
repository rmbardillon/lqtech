$(document).ready(function () {
    $('.btn').click(function (event){
        event.preventDefault()
    })   
});

$("#login").click(function() {
    var username = $("#username").val();
    var password = $("#password").val();
    $.ajax({
        type: "POST",
        url: "../../data/controller/LoginController.php?action=login",
        dataType: "json",
        data: {
            username: username,
            password: password
        },
        success: function (response) 
        {
            if(response == "Validated") {
                window.location.href = "home.php";
            } else {
                Swal.fire({
                    position: 'center',
                    icon: 'warning',
                    title: response,
                    showConfirmButton: false,
                })
            }
        },
        error: function () {
            
        }
    });
});