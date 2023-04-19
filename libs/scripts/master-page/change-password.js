$(document).ready(function () {

    $("#oldPassword").on("change", function () {
        $.ajax({
            type: "POST",
            url: USER_CONTROLLER + '?action=checkOldPassword',
            dataType: "json",
            data: {
                username: $("#username").val(),
                oldPassword: $("#oldPassword").val(),
            },
            success: function (response) {
                if (response == "Validated") {
                    $("#oldPassword").removeClass("is-invalid");
                    $("#oldPassword").addClass("is-valid");
                    $("#oldPassword").attr("data-valid", "true");
                    $("#oldPasswordError").html("");
                } else {
                    $("#oldPassword").removeClass("is-valid");
                    $("#oldPassword").addClass("is-invalid");
                    $("#oldPassword").attr("data-valid", "false");
                    $("#oldPasswordError").html("Please input your old password correctly.");
                }
            },
            error: function () {
                $("#oldPassword").removeClass("is-valid");
                $("#oldPassword").addClass("is-invalid");
                $("#oldPassword").attr("data-valid", "false");
            }
        });
    });

    $("#newPassword").on("change", function () {
        if($("#oldPassword").val() == $("#newPassword").val()) {
            $("#newPassword").removeClass("is-valid");
            $("#newPassword").addClass("is-invalid");
            $("#newPassword").attr("data-valid", "false");
            $("#newPasswordError").html("New Password must not be the same as the old password.");
        } else {
            // Make an AJAX request to the Have I Been Pwned API
            $.ajax({
                url: 'https://api.pwnedpasswords.com/range/' + sha1($("#newPassword").val()).substring(0, 5),
                method: 'GET',
                success: function(data) {
                    // Check if the password has been breached
                    var hashSuffixes = data.split('\r\n');
                    var hashPrefix = sha1($("#newPassword").val()).substring(5).toUpperCase();
                    for (var i = 0; i < hashSuffixes.length; i++) {
                        if (hashSuffixes[i].startsWith(hashPrefix)) {
                            $("#newPassword").removeClass("is-valid");
                            $("#newPassword").addClass("is-invalid");
                            $("#newPassword").attr("data-valid", "false");
                            $("#newPasswordError").html("This password has been breached. Please choose a different password.");
                            return;
                        }
                    }
                    // If the password has not been breached, mark it as valid
                    $("#newPassword").removeClass("is-invalid");
                    $("#newPassword").addClass("is-valid");
                    $("#newPassword").attr("data-valid", "true");
                    $("#newPasswordError").html("");
                }
            });
        }
    });

    
    $("#confirmPassword").on("change", function () {
        if($("#newPassword").val() == $("#confirmPassword").val()) {
            $("#confirmPassword").removeClass("is-invalid");
            $("#confirmPassword").addClass("is-valid");
            $("#confirmPassword").attr("data-valid", "true");
            $("#confirmPasswordError").html("");
        } else {
            $("#confirmPassword").removeClass("is-valid");
            $("#confirmPassword").addClass("is-invalid");
            $("#confirmPassword").attr("data-valid", "false");
            $("#confirmPasswordError").html("Passwords does not match. ");
        }
    });

});

const changePassword = (() => {
    const thisChangePassword = {};

    thisChangePassword.changePassword = () => {
        $.ajax({
            type: "POST",
            url: USER_CONTROLLER + '?action=changePassword',
            dataType: "json",
            data: {
                username: $("#username").val(),
                newPassword: $("#newPassword").val(),
            },
            success: function (response) {
                if (response == "Updated Successfully") {
                    Swal.fire({
                        title: 'Success!',
                        text: 'Password has been changed successfully.',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            thisChangePassword.resetFields();
                        }
                    });
                } else {
                    Swal.fire({
                        title: 'Error!',
                        text: 'Something went wrong. Please try again.',
                        icon: 'error',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            thisChangePassword.resetFields();
                        }
                    });
                }
            }
        });
    }

    thisChangePassword.resetFields = () => {
        $("#oldPassword").val("");
        $("#newPassword").val("");
        $("#confirmPassword").val("");
        $("#oldPasswordError").html("");
        $("#newPasswordError").html("");
        $("#confirmPasswordError").html("");
    }

    return thisChangePassword;
})();