$(document).ready(function () {
    installationStatus.loadTableData();
});

const installationStatus = (() => {
    const thisInstallationStatus = {};
    var installationFormID = '';
    var productCartReturn = [];

    $(".installationFormID").text("Installation Form ID: " + installationFormID);

    $("#viewForm").click(function () {
        // Open new page
        window.open("../report/installation-form.php?installationFormID=" + installationFormID, "_blank");
    });

    $("#confirmTransaction").click(function () {
        console.log(installationFormID);
        // Input Job Order Number
        $("#modal_installation_status").modal('hide');
        $("#confirmTransactionModal").modal('show');
        $.ajax({
            type: "POST",
            url: INSTALLATION_STATUS_CONTROLLER + '?action=getSalesOrderNumber',
            dataType: "json",
            data: {
                id: installationFormID
            },
            success: function (response) {
                $("#salesOrderNumber").val(response['SALES_ORDER_NUMBER']);
                $("#transmittedBy").val(response['INSTALLER']);
                if(response['SALES_ORDER_NUMBER'] == '') {
                    $("#salesOrderNumber").prop('readonly', false);
                } else {
                    $("#salesOrderNumber").prop('readonly', true);
                }
            }
        });
    });

    thisInstallationStatus.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: INSTALLATION_STATUS_CONTROLLER + '?action=getInstallationStatusTable',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_installation_status').html(response);
                $('.table').DataTable();
            },
            error: function () {
                
            }
        });
    }

    thisInstallationStatus.view = (id) => {
        $.ajax({
            type: "POST",
            url: INSTALLATION_STATUS_CONTROLLER + '?action=getInstallationStatus',
            dataType: "json",
            data: {
                id: id
            },
            success: function (response) {
                if(response[0].STATUS == "Success" || response[0].STATUS == "Canceled") {
                    $("#viewForm").removeClass("disabled");
                    $("#actionButtons").hide();
                } else {
                    $("#viewForm").addClass("disabled");
                    $("#actionButtons").show();
                }
                installationFormID = response[0]['INSTALLATION_FORM_ID'];
                $("#installationFormID").text("Installation Form ID: " + response[0]['INSTALLATION_FORM_ID']);
                $(".projectNameValue").text(response[0]['PROJECT_NAME']);
                $(".dateValue").text(response[0]['FORMATTED_DATE']);
                $(".contactPersonValue").text(response[0]['CONTACT_PERSON']);
                $(".contactNumberValue").text(response[0]['CONTACT_NUMBER']);
                $(".projectSiteValue").text(response[0]['PROJECT_SITE']);
                $(".salesManBranchValue").text(response[0]['SALESMAN_BRANCH']);
                $(".installerValue").text(response[0]['INSTALLER']);
                $(".salesOrderNumberValue").text(response[0]['SALES_ORDER_NUMBER']);
                $(".jobOrderNumberValue").text(response[0]['JOB_ORDER_NUMBER']);
                $(".serviceValue").text(response[0]['SERVICE']);
                $(".noteValue").text(response[0]['NOTE']);

                var data = '';
                const serialNumbersByModel = {};

                response.forEach(element => {
                    const model = element.MODEL;
                    const serialNumbers = response
                        .filter(obj => obj.MODEL === model)
                        .map(obj => obj.SERIAL_NUMBER);

                    serialNumbersByModel[model] = serialNumbers;
                });
                for (const key in serialNumbersByModel) {
                    const value = serialNumbersByModel[key];
                    data += `<tr>
                                <td>${key}</td>
                                <td>${value}</td>
                                <td>${value.length}</td>
                            </tr>`;
                }
                $('.table').DataTable().destroy();
                $("#installation_items").html(data);
                $('.table').DataTable();
            },
            error: function () {
                
            }
        });
        $('#modal_installation_status').modal('show');
    }

    thisInstallationStatus.confirmTransaction = () => {
        var salesOrderNumber = $("#salesOrderNumber").val();
        var jobOrderNumber = $("#jobOrderNumber").val();
        var transmittedBy = $("#transmittedBy").val();
        if(salesOrderNumber == '' || jobOrderNumber == '') {
            swal.fire(
                'Failed!',
                'Please input Sales Order Number and Job Order Number.',
                'error'
            );
            return;
        }
        swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, confirm it!',
            cancelButtonText: 'No, cancel!',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: INSTALLATION_STATUS_CONTROLLER + '?action=confirmTransaction',
                    dataType: "json",
                    data: {
                        installationFormID: installationFormID,
                        salesOrderNumber: salesOrderNumber,
                        jobOrderNumber: jobOrderNumber,
                        transmittedBy: transmittedBy
                    },
                    success: function (response) {
                        if (response == "Successfully Updated") {
                            swal.fire(
                                'Confirmed!',
                                'Transaction has been confirmed.',
                                'success'
                            ).then((result) => {
                                if (result.isConfirmed) {
                                    installationStatus.loadTableData();
                                    $('#modal_installation_status').modal('hide');
                                    $('#confirmTransactionModal').modal('hide');
                                }
                            });
                        } else {
                            swal.fire(
                                'Failed!',
                                'Transaction failed to confirm.',
                                'error'
                            );
                        }
                    },
                    error: function () {
                        
                    }
                });
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                swal.fire(
                    'Cancelled',
                    'Transaction cancelled',
                    'error'
                )
            }
        })
    }
    
    thisInstallationStatus.processReturns = () => {
        $("#processReturnModal").modal('show');
        $("#modal_installation_status").modal('hide');
        $("#serial_number").focus();
    }
    
    thisInstallationStatus.cancelTransaction = () => {
        swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, cancel it!',
            cancelButtonText: 'No, don\'t cancel!',
        }).then((result) => {
            if(result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: INSTALLATION_STATUS_CONTROLLER + '?action=cancelTransaction',
                    dataType: "json",
                    data: {
                        installationFormID: installationFormID
                    },
                    success: function (response) {
                        if (response == "Successfully Canceled") {
                            swal.fire(
                                'Cancelled!',
                                'Transaction has been cancelled.',
                                'success'
                            ).then((result) => {
                                if (result.isConfirmed) {
                                    installationStatus.loadTableData();
                                    $('#modal_installation_status').modal('hide');
                                }
                            });
                        } else {
                            swal.fire(
                                'Failed!',
                                'Transaction failed to cancel.',
                                'error'
                            );
                        }
                    }
                })
            }
        });
    }

    $("#serial_number").on('keydown', function(event) {
        if (event.key === 'Enter') {
            var serialNumber = $("#serial_number").val();
            $.ajax({
                type: "POST",
                url: INSTALLATION_STATUS_CONTROLLER + '?action=checkSerialNumber',
                dataType: "json",
                data: {
                    serialNumber: serialNumber,
                    installationFormID: installationFormID
                },
                success: function (response) {
                    if(!response) {
                        swal.fire({
                            title: 'Serial Number not found',
                            text: "Input another serial number",
                            icon: 'error',
                            confirmButtonText: 'Ok'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $("#serial_number").val('');
                                $("#serial_number").focus();
                            }
                        });
                    } else {
                        $("#model").val(response['MODEL']);
                        productCartReturn.push(response);
                        $("#serial_number").val('');
                        $("#serial_number").focus();

                        // Check if there are any items with the same model in the productCartReturn array
                        const sameModelItems = productCartReturn.filter(item => item.MODEL === response.MODEL);
                        if (sameModelItems.length === 1) {
                            // If there are no other items with the same model, add a new row to the table with a quantity of 1
                            $("#productCartReturn").append(`
                                <tr>
                                    <td>1</td>
                                    <td>${response['SKU']}</td>
                                    <td>${response['MODEL']}</td>
                                    <td><button type="button" class="btn btn-danger btn-sm" onclick="thisInstallationStatus.removeProductCartReturn('${response['SERIAL_NUMBER']}')">Remove</button></td>
                                </tr>
                            `);
                        } else {
                            // If there are other items with the same model, update the quantity of the existing row
                            const quantity = sameModelItems.length;
                            $("#productCartReturn tr").each(function() {
                                const $row = $(this);
                                if ($row.find("td").eq(1).html() === response['SKU'] && $row.find("td").eq(2).html() === response['MODEL']) {
                                    $row.find("td").eq(0).html(quantity);
                                }
                            });
                        }
                    }
                }, error: function(e) {
                    console.log(e);
                }
            });
        }
    });

    $("#return").on('click', function() {
        if(productCartReturn.length == 0) {
            swal.fire({
                title: 'No items to return',
                text: "Please input serial numbers",
                icon: 'error',
                confirmButtonText: 'Ok'
            });
            return;
        }
        swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, confirm it!',
            cancelButtonText: 'No, cancel!',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                $("#processReturnModal").modal('hide');
                $.ajax({
                    type: "POST",
                    url: INSTALLATION_STATUS_CONTROLLER + '?action=confirmReturn',
                    dataType: "json",
                    data: {
                        installationFormID: installationFormID,
                        productCartReturn: productCartReturn
                    },
                    success: function (response) {
                        if (response == "Successfully Save") {
                            $("#confirmTransaction").click();
                        } else {
                            swal.fire(
                                'Failed!',
                                'Transaction failed to confirm.',
                                'error'
                            );
                        }
                    },
                    error: function () {
                        
                    }
                });
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                swal.fire(
                    'Cancelled',
                    'Transaction cancelled',
                    'error'
                )
            }
        })
    });

    return thisInstallationStatus;
})();