$(document).ready(function () {
    installationStatus.loadTableData();
});

const installationStatus = (() => {
    const thisInstallationStatus = {};

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

    return thisInstallationStatus;
})();