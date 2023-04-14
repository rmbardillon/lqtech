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
                $('.table').DataTable();
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
                $('.table').DataTable();
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
                console.log(response[0].MODEL);
                $("#stockModal .modal-title").html(response[0].MODEL);
            }, 
            error: function() {
            
            }
        });
        $("#stockModal").modal('show');
    }

    return thisStock;
})();