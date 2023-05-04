$(document).ready(function() {
    $("#generateReport").click(function() {
        var fromDate = $("#from").val();
        var toDate = $("#to").val();
        var selectReport = $("#selectReport").val();

        if(fromDate == "" || toDate == "" || selectReport == null) {
            swal.fire({
                title: "Error!",
                text: "Please select all fields",
                icon: "error",
                confirmButtonText: "OK"
            });
        } else {
            if(selectReport == "1") {
                $.ajax({
                    url: REPORT_CONTROLLER + "?action=1",
                    type: "POST",
                    data: {
                        fromDate: fromDate,
                        toDate: toDate
                    },
                    success: function(data) {
                        if(data == "[]") {
                            swal.fire({
                                title: "Error!",
                                text: "No data found",
                                icon: "error",
                                confirmButtonText: "OK"
                            });
                        } else {
                            window.open("../report/product-inventory-report.php?from=" + fromDate + "&to=" + toDate, "_blank");
                        }
                    },
                    error: function() {
                        swal.fire({
                            title: "Error!",
                            text: "Something went wrong",
                            icon: "error",
                            confirmButtonText: "OK"
                        });
                    }
                })
            } else if(selectReport == "2") {
                $.ajax({
                    url: REPORT_CONTROLLER + "?action=2",
                    type: "POST",
                    data: {
                        fromDate: fromDate,
                        toDate: toDate
                    },
                    success: function(data) {
                        if(data == "[]") {
                            swal.fire({
                                title: "Error!",
                                text: "No data found",
                                icon: "error",
                                confirmButtonText: "OK"
                            });
                        } else {
                            window.open("../report/installation-report.php?from=" + fromDate + "&to=" + toDate, "_blank");
                        }
                    },
                    error: function() {
                        swal.fire({
                            title: "Error!",
                            text: "Something went wrong",
                            icon: "error",
                            confirmButtonText: "OK"
                        });
                    }
                })
            } else if(selectReport == "3") {
                $.ajax({
                    url: REPORT_CONTROLLER + "?action=3",
                    type: "POST",
                    data: {
                        fromDate: fromDate,
                        toDate: toDate
                    },
                    success: function(data) {
                        if(data == "[]") {
                            swal.fire({
                                title: "Error!",
                                text: "No data found",
                                icon: "error",
                                confirmButtonText: "OK"
                            });
                        } else {
                            window.open("../report/installer-report.php?from=" + fromDate + "&to=" + toDate, "_blank");
                        }
                    },
                    error: function() {
                        swal.fire({
                            title: "Error!",
                            text: "Something went wrong",
                            icon: "error",
                            confirmButtonText: "OK"
                        });
                    }
                })
            }
        }
    });

    $("#from, #to").change(function() {
        var fromDate = $("#from").val();
        var toDate = $("#to").val();
        if(fromDate != "" && toDate != "") {
            if (fromDate > toDate) {
                swal.fire({
                    title: "Error!",
                    text: "From date must be less than to date",
                    icon: "error",
                    confirmButtonText: "OK"
                }).then((result) => {
                    if (result.isConfirmed) {
                        $("#from").val("");
                        $("#to").val("");
                    }
                });
            } else {
                console.log("fromDate < toDate");
            }
        }
    });
});