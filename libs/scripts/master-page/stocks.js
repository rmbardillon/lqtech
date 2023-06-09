$(document).ready(function () {
    Stock.loadTableData();

    $('.btn').click(function (event){
        event.preventDefault()
    })
});

const Stock = (() => {
    const thisStock = {};

    thisStock.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: STOCK_CONTROLLER + '?action=displayStocksTable',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#stocks_table').html(response);
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

    thisStock.viewProduct = (id) => {
        $.ajax({
            type: "POST",
            url: STOCK_CONTROLLER + '?action=displayStocksPerId',
            dataType: "json",
            data: {
                id: id,
            },
            success: function(response) {
                $('.table').DataTable().destroy();
                $("#stock_table").html(response);
                // $('.table').DataTable();
                // Datatables no sorting
                $('.table').DataTable({
                    columnDefs: [{
                        targets: 'no-sort',
                        orderable: false
                    }]
                });
            }, 
            error: function() {
            
            }
        });
        $.ajax({
            type: "POST",
            url: STOCK_CONTROLLER + '?action=getById',
            dataType: "json",
            data: {
                id: id,
            },
            success: function(response) {
                $("#stockModal .modal-title").html(response[0].MODEL);
            }, 
            error: function() {
            
            }
        });
        $("#stockModal").modal('show');
    }

    return thisStock;
})();