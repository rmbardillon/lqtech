$(document).ready(function () {
    var productCart = [];
    var totalItems = 0;
    cartProducts = '';
    var productID = '';
    var productDetailsID = '';
    Product.loadTableData();

    $('.btn').click(function (event){
        event.preventDefault()
    })

    $('#sku').on('keydown', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            $.ajax({
                type: "POST",
                url: PRODUCT_CONTROLLER + '?action=getBySku',
                dataType: "json",
                data:{
                    sku: $('#sku').val()
                },
                success: function (response){
                    if(response == null) {
                        swal.fire({
                            title: "Error",
                            text: "Product not found",
                            icon: "error",
                            confirmButtonText: "Ok"
                        })
                    } else {
                        $("#model").val(response.MODEL);
                        productID = response.PRODUCT_ID;
                        productDetailsID = response.PRODUCT_DETAILS_ID;
                        $('#serial_numbers').focus(); // move focus to the textarea
                    }
                },
                error: function () {
                }
            });
        }
    });

    var i = 0;
    $("#serial_numbers").on('keydown', function(event) {
        if (event.key === 'Enter') {
            var sku = $("#sku").val();
            var model = $("#model").val();
            var serialNumbers = $('#serial_numbers').val().trim().split('\n');
            var serial_number = serialNumbers.pop().trim();
            $.ajax({
                type: "POST",
                url: PRODUCT_CONTROLLER + '?action=checkSerialNumbers',
                dataType: "json",
                data:{
                    serial_number: serial_number,
                    sku: sku
                },
                success: function(response) {
                    if (response == false) {
                        swal.fire({
                        title: "Error",
                        text: "Invalid Serial Number",
                        icon: "error",
                        confirmButtonText: "Ok"
                        }).then(function() {
                            // Remove the last invalid serial_number and add a new line
                            var serialNumbers = $('#serial_numbers').val().trim().split('\n');
                            if (serialNumbers.length > 0) {
                                var lastSerialNumber = serialNumbers.pop().trim();
                                $('#serial_numbers').val(serialNumbers.join('\n'));
                                if ($('#serial_numbers').val() !== '') { // added condition to check if textarea has any content
                                $('#serial_numbers').val($('#serial_numbers').val() + '\n');
                                }
                            }
                        });
                    } else {
                        // Remove the last invalid serial_number and check for duplicates
                        var serialNumbers = $('#serial_numbers').val().trim().split('\n');
                        if (serialNumbers.length > 0) {
                            var lastSerialNumber = serialNumbers.pop().trim();
                            var duplicateSerialNumbers = false;
                            serialNumbers.forEach(function(serialNumber) {
                                if (serialNumber.trim() === lastSerialNumber) {
                                    duplicateSerialNumbers = true;
                                    return false; // stop looping since we found a duplicate
                                }
                            });
                            if (duplicateSerialNumbers) {
                                swal.fire({
                                    title: "Error",
                                    text: "Duplicate Serial Number",
                                    icon: "error",
                                    confirmButtonText: "Ok"
                                }).then(function() {
                                    $('#serial_numbers').val(serialNumbers.join('\n'));
                                    if ($('#serial_numbers').val() !== '') { 
                                        $('#serial_numbers').val($('#serial_numbers').val() + '\n');
                                    }
                                });
                            } else {
                                i += 1;
                                cartProduct =   `<tr>
                                                    <td>${i}</td>
                                                    <td>${sku}</td>
                                                    <td>${model}</td>
                                                </tr>`;
                                $("#item_list").html(cartProduct);
                            }
                        }
                    }
                }
            })         
        }
    });

    $("#addToCart").click(function() {
        var sku = $("#sku").val();
        var model = $("#model").val();
        var serial_numbers = $("#serial_numbers").val();
        var lines = serial_numbers.split(/\r|\r\n|\n/); // split by line breaks
        var nonEmptyLines = lines.filter(function(line) {
            return line.trim() !== ''; // exclude empty lines
        });
        var quantity = nonEmptyLines.length;
        totalItems += quantity;

        // alert("Total Items: " + totalItems);
        var productRow = `
            <tr>
                <td>${quantity}</td>
                <td>${sku}</td>
                <td>${model}</td>
                <td><button class="btn btn-danger">Remove</button></td>
            </tr>
        `;
        cartProducts += `<tr>
                            <td>${quantity}</td>
                            <td>${sku}</td>
                            <td>${model}</td>
                        </tr>`;
        productCart.push({
            sku: sku,
            model: model,
            serial_numbers: serial_numbers,
            productID: productID,
            productDetailsID: productDetailsID
        });
        $('.table').DataTable().destroy();
        $("#cart").append(productRow);
        $('.table').DataTable();
        $("#sku").val("");
        $("#model").val("");
        $("#serial_numbers").val("");
        $("#sku").focus();
        $("#item_list").html("");
        i = 0;
    });

    $("#checkout").click(function() {
        $("#checkout_table").html(cartProducts);
        $("#total").html(totalItems);
        $('#myModal').modal('show');
    });

    $("#checkout_confirm").click(function() {
        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=checkout',
            dataType: "json",
            data:{
                productCart: productCart
            },
            success: function (response){
                if(response == "Successfully Updated") {
                    console.log(response);
                    swal.fire({
                        title: "Success",
                        text: "Products successfully checked out",
                        icon: "success",
                        confirmButtonText: "Ok"
                    }).then(function() {
                        productCart = [];
                        // Reload the page
                        location.reload();
                    })
                } else {
                    swal.fire({
                        title: "Error",
                        text: "Something went wrong",
                        icon: "error",
                        confirmButtonText: "Ok"
                    })
                }     
            },
            error: function () {
            }
        });
    });

    $(".pos_close").click(function() {
        $(`#myModal`).modal('hide');
    });
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
        thisProduct.loadSelectData();
        $('.model').select2({
            placeholder: 'Search for an option...',
            allowClear: true,
        });
    });
    thisProduct.loadSelectData = () => {
        $.ajax({
            type: "GET",
            url: PRODUCT_CONTROLLER + '?action=getProductTable',
            data: {
                category: category
            },
            dataType: "json",
            success: function (response) {
                $('#models').html(response);
            },
            error: function () {
                
            }
        });
    }
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
        var serial_numbers = $("#serial_number").val();

        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=insert',
            dataType: "json",
            data:{
                model : model,
                serial_numbers : serial_numbers
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