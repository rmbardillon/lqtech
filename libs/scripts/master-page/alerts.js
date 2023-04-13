$(document).ready(function () {
    Alerts.loadTableDataStockStatus();
    Alerts.loadAlertCount();
});


const Alerts = (() => {
    const thisAlerts = {};

    thisAlerts.loadTableDataStockStatus = () => {
        $.ajax({
            type: "GET",
            url: ALERT_CONTROLLER + '?action=getTableDataStockStatus',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_stock_status').html(response);
                $(".badge").val(response.row_count);
                $('.table').DataTable();
            },
            error: function () {

            }
        });
    }

    thisAlerts.loadAlertCount = () => {
        $.ajax({
            type: "GET",
            url: ALERT_CONTROLLER + '?action=getAlertCount',
            dataType: "json",
            success: function (response) {
                $('.badge').html(response);
            },
            error: function () {

            }
        });
    }
    return thisAlerts;
})();