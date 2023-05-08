$(document).ready(function () {
    Alerts.loadTableDataStockStatus();
    Alerts.loadAlertCount();

});


const Alerts = (() => {
    const thisAlerts = {};

    thisAlerts.restock = (id) => {
        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=getById',
            dataType: "json",
            data: {
                product_id: id
            },
            success: function (response) {
                var category = response.CATEGORY;
                var model = response.PRODUCT_DETAILS_ID;

                console.log(category);
                console.log(model);
                window.location.href = 'insert-product.php?category=' + category + '&model=' + model;
            },
            error: function () {

            }
        });
    }

    thisAlerts.loadTableDataStockStatus = () => {
        $.ajax({
            type: "GET",
            url: ALERT_CONTROLLER + '?action=getTableDataStockStatus',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_stock_status').html(response);
                $(".badge").val(response.row_count);
                // $('.table').DataTable();
                // Datatables no sorting
                $('.table').DataTable({
                    columnDefs: [{
                        targets: 'no-sort',
                        orderable: false
                    }]
                });
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