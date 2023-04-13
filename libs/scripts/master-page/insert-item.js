$(document).ready(function () {
    Product.loadTableData();

    $('.btn').click(function (event){
        event.preventDefault()
    })
    
    $('#sku').on('keydown', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            $('#serial_number').focus(); // move focus to the textarea
        }
    });

    // Get the value of the category parameter from the query string
    var category = new URLSearchParams(window.location.search).get('category');
    var model = new URLSearchParams(window.location.search).get('model');
    if(category != null) {
        $('#category').val(category);
        $('.model').select2({
            placeholder: 'Search for an option...',
            allowClear: true,
        });
        Product.loadSelectData(category, model);
    }
});

const Product = (() => {
    const thisProduct = {};
    let toUpdate = false;
    let product_id = '';
    let category = '';

    $("#category").change(function() {
        if($(this).val() == "Camera") {
            category = "Camera";
        } else if($(this).val() == "Recorder") {
            category = "Recorder";
        } else if($(this).val() == "Hard drive") {
            category = "Hard drive";
        } else if($(this).val() == "Power Supply") {
            category = "Power Supply";
        } else if($(this).val() == "Monitor") {
            category = "Monitor";
        }
        thisProduct.loadSelectData(category);
        $('.model').select2({
            placeholder: 'Search for an option...',
            allowClear: true,
        });
    });
    thisProduct.loadSelectData = (category, defaultModel) => {
        $.ajax({
            type: "GET",
            url: PRODUCT_CONTROLLER + '?action=getProductTable',
            data: {
                category: category
            },
            dataType: "json",
            success: function (response) {
                $('#models').html(response);
                if (defaultModel) {
                    $('#models').val(defaultModel);
                }
            },
            error: function () {
            
            }
        });
    };

    thisProduct.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: PRODUCT_CONTROLLER + '?action=getProductsTable',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_product').html(response);
                $('.table').DataTable();
            },
            error: function () {
                
            }
        });
    }

    thisProduct.clickSaveButton = () => {
        if(!toUpdate) {
            thisProduct.save()
        }
        else {
            thisProduct.update()
        }
    }

    thisProduct.save = () => {
        var model = $("#models").val();
        var sku = $("#sku").val();
        var serial_numbers = $("#serial_number").val();

        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=insert',
            dataType: "json",
            data:{
                model : model,
                serial_numbers : serial_numbers,
                sku: sku
            },
            success: function (response) 
            {
                thisProduct.loadTableData();
                thisProduct.resetFields();
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Products added successfully',
                    showConfirmButton: true,
                })
            },
            error: function () {

            }
            
            
        });
    }

    thisProduct.resetFields = () => {
        toUpdate = false;
        var model = `
        <label class="form-label" for="models">Models</label>
        <select class="form-select model" name="models" id="models">
            <option value="" disabled selected>- Select Model -</option>
        </select>
        `;
        $('#category').val("");
        // $('#models').val("").select2("val", "");
        $("#modelDiv").html(model);
        $('#serial_number').val("");
        $('#sku').val("");
    }

    thisProduct.clickDelete = (id) => {
        product_id = id

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!',
            cancelButtonText: 'No'
        }).then((result) => {
            if (result.isConfirmed) {
                thisProduct.delete();
            }
        })
    }

    thisProduct.delete = () => {
        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=delete',
            dataType: "json",
            data:{
                product_id: product_id
            },
            success: function (response) 
            {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Product Deleted Successfully ',
                    showConfirmButton: false,
                    timer: 1500
                })
                thisProduct.loadTableData();
            },
            error: function () {

            }
        });
    }

    thisProduct.clickUpdate = (id) => {
        product_id = id;

        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=getById',
            dataType: "json",
            data:{
                product_id: product_id
            },
            success: function (response) 
            {   
                if(response.CATEGORY == "Camera") {
                    $('#category').val("Camera");
                    $('#category').trigger("change");
                    $("#camera_type").val(response.CAMERA_TYPE);
                    $("#camera_shape").val(response.CAMERA_SHAPE);
                    $("#camera_type").prop("disabled", true);
                    $("#camera_shape").prop("disabled", true);
                } else if(response.CATEGORY == "Recorder") {
                    $('#category').val("Recorder");
                    $('#category').trigger("change");
                    $("#recorder_type").val(response.RECORDER_TYPE);
                    $("#recorder_type").prop("disabled", true);
                } else if(response.CATEGORY == "Hard drive") {
                    $('#category').val("Hard drive");
                    $('#category').trigger("change");
                    $("#capacity").val(response.CAPACITY);
                    $("#capacity").prop("disabled", true);
                } else if(response.CATEGORY == "Power Supply") {
                    $('#category').val("Power Supply");
                    $('#category').trigger("change");
                    $("#psu_type").val(response.PSU_TYPE);
                    $("#watts").val(response.WATTS);
                    $("#psu_type").prop("disabled", true);
                    $("#watts").prop("disabled", true);
                } else if(response.CATEGORY == "Monitor") {
                    $('#category').val("Monitor");
                    $('#category').trigger("change");
                    $("#monitor_size").val(response.MONITOR_SIZE);
                    $("#monitor_size").prop("disabled", true);
                }
                $("#category").val(response.CATEGORY);
                $("#brand").val(response.BRAND);
                $("#model").val(response.MODEL);
                $("#buying_price").val(response.BUYING_PRICE);
                $("#selling_price").val(response.SELLING_PRICE);
                $("#serial_number").val(response.SERIAL_NUMBER);

                $("#brand").prop("disabled", true);
                $("#model").prop("disabled", true);
                $("#serial_number").prop("disabled", true);
                
                toUpdate = true;

                $('#btn_save_product').html('Update Product');
            },
            error: function () {

            }
        });
    }

    thisProduct.update = () => {
        const buying_price = $('#buying_price').val();
        const selling_price = $('#selling_price').val();
        
        if(buying_price == ""
        || selling_price == "") {
            Swal.fire({
                position: 'center',
                icon: 'warning',
                title: 'Please fillout all fields',
                showConfirmButton: true,
            })
        }

        else if (buying_price > selling_price){
            Swal.fire({
                position: 'center',
                icon: 'warning',
                title: 'Buying price should be lower than Selling price',
                showConfirmButton: true,
            })
        }
        else {
            $.ajax({
                type: "POST",
                url: PRODUCT_CONTROLLER + '?action=updateProductDetails',
                dataType: "json",
                data:{
                    product_id: product_id,
                    buying_price: buying_price,
                    selling_price: selling_price,
                },
                success: function () 
                {
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        title: 'Product updated successfully',
                        showConfirmButton: true,
                    })
                    thisProduct.loadTableData();
                    thisProduct.resetFields()
                },
                error: function () {
    
                }
            });
        }
        
    }

    return thisProduct;
})();