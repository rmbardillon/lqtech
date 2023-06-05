$(document).ready(function () {
    $('.btn').click(function (event){
        event.preventDefault()
    });

    $('#show-password').click(function() {
        if ($(this).is(':checked')) {
            $('#password').attr('type', 'text');
        } else {
            $('#password').attr('type', 'password');
        }
    });
});

$("#login").click(function(event) {
    event.preventDefault();
    var username = $("#username").val();
    var password = $("#password").val();
    $.ajax({
        type: "POST",
        url: LOGIN_CONTROLLER + '?action=login',
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