$(document).ready(function () {
    Logs.loadData();
});


const Logs = (() => {
    const thisLogs = {};

    thisLogs.loadData = () => {
        $.ajax({
            type: "GET",
            url: ACTIONLOG_CONTROLLER + '?action=getTableData',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbl_data').html(response);

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

    return thisLogs;
})();