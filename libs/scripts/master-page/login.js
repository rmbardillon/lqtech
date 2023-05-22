$(document).ready(function () {
    $('.btn').click(function (event){
        event.preventDefault()
    });

    $('#show-password').click(function() {
        if ($(this).is(':checked')) {
            $('#password').attr('type', 'text');
            $(this).next('label').text('Hide Password');
        } else {
            $('#password').attr('type', 'password');
            $(this).next('label').text('Show Password');
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