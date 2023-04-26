$(document).ready(function () {
    installationStatus.loadTableData();
});

const installationStatus = (() => {
    const thisInstallationStatus = {};
    var installationFormID = '';

    $("#viewForm").click(function () {
        // Opon new page
        window.open("../report/report.php?installationFormID=" + installationFormID, "_blank");
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
                if(response[0].STATUS == "Success") {
                    $("#viewForm").removeClass("disabled");
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
        console.log(installationFormID);
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
                        installationFormID: installationFormID
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
        console.log(installationFormID);
        $('#modal_installation_status').modal('show');
    }
    
    thisInstallationStatus.cancelTransaction = () => {
        console.log(installationFormID);
        $('#modal_installation_status').modal('show');
    }

    return thisInstallationStatus;
})();