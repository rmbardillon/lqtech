$(document).ready(function () {
    Product.loadTableData();
    $("#formModal").modal("show");
});

const Product = (() => {
    var projectName = "";
    var date = "";
    var contactPerson = "";
    var contactNumber = "";
    var projectSite = "";
    var salesManBranch = "";
    var installer = "";
    var salesOrderNumber = "";
    var jobOrderNumber = "";
    var service = "";
    var installationForm = [];

    var productCart = [];
    var i = 0;
    var totalItems = 0;
    var productRow = '';
    var cartProducts = '';
    var productID = '';
    var productDetailsID = '';

    const datetime = new Date();
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric' };
    const formattedDatetime = datetime.toLocaleString('en-US', options);
    $("#date").val(formattedDatetime);

    $("#closeModal").click(function () {
        swal.fire({
            title: "Are you sure you want to leave?",
            text: "You will lose unsaved data.",
            icon: "error",
            showCancelButton: true,
            confirmButtonText: "Ok",
            reverseButtons: true,
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'home.php';
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                // User clicked the cancel button, do nothing
            }
        });
    });

    $("#confirmForm").click(function() {
        projectName = $("#projectName").val();
        date = $("#date").val();
        contactPerson = $("#contactPerson").val();
        contactNumber = $("#contactNumber").val();
        projectSite = $("#projectSite").val();
        salesManBranch = $("#salesManBranch").val();
        installer = $("#installer").val();
        salesOrderNumber = $("#salesOrderNumber").val();
        note = $("#note").val();
        service = $("#service").val();

        console.log(date)
        installationForm.push({
            projectName: projectName,
            date: date,
            contactPerson: contactPerson,
            contactNumber: contactNumber,
            projectSite: projectSite,
            salesManBranch: salesManBranch,
            installer: installer,
            salesOrderNumber: salesOrderNumber,
            service: service,
            note: note,
            status: "Pending"
        });
        console.log(installationForm)
        if(projectName == "" || contactPerson == "" || contactNumber == "" || projectSite == "" || salesManBranch == "" || installer == "" || service == "") {
            Swal.fire({
                title: 'Error',
                text: 'Please fill up all the fields',
                icon: 'error',
                confirmButtonText: 'Ok'
            });
        } else {
            $("#formModal").modal("hide");
            $("#confirmFormModal").modal("show");
            $(".projectNameValue").text(projectName);
            $(".dateValue").text(date);
            $(".contactPersonValue").text(contactPerson);
            $(".contactNumberValue").text(contactNumber);
            $(".projectSiteValue").text(projectSite);
            $(".salesManBranchValue").text(salesManBranch);
            $(".installerValue").text(installer);
            $(".salesOrderNumberValue").text(salesOrderNumber);
            $(".noteValue").text(note);
            $(".serviceValue").text(service);
        }
    });


    $("#back").click(function(){
        $("#formModal").modal("show");
        $("#confirmFormModal").modal("hide");
    });
    
    $("#submitInstallationForm").click(function(){
        swal.fire({
            title: "Are you sure you want to submit?",
            text: "You will not be able to edit this form once submitted.",
            icon: "warning",
            showCancelButton: true,
            confirmButtonText: "Ok",
            reverseButtons: true,
        }).then((result) => {
            if(result.isConfirmed) {
                $("#confirmFormModal").modal("hide");
            }
        })
    });

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

    $("#serial_numbers").on('keydown', function(event) {
        if (event.key === 'Enter') {
            var sku = $("#sku").val();
            var model = $("#model").val();
            var serial = $('#serial_numbers').val().split('\n');
            if(serial[serial.length - 1] != "") {
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
                });
            }
        }
    });

    $("#addToCart").click(function() {
        var sku = $("#sku").val();
        var model = $("#model").val();
        var serial_numbers = $("#serial_numbers").val();
        var endsWithNewLine = serial_numbers.endsWith('\n');
        var lines = serial_numbers.split(/\r|\r\n|\n/); // split by line breaks
        var nonEmptyLines = lines.filter(function(line) {
            return line.trim() !== ''; // exclude empty lines
        });
        var quantity = nonEmptyLines.length;

        if(!endsWithNewLine) {
            $("#serial_numbers").val("");
            $("#serial_numbers").focus();
            swal.fire({
                title: "Error",
                text: "Please enter serial numbers",
                icon: "error",
                confirmButtonText: "Ok"
            });
            return;
        }

        if(quantity == 0) {
            $("#serial_numbers").focus();
            swal.fire({
                title: "Error",
                text: "Please enter serial numbers",
                icon: "error",
                confirmButtonText: "Ok"
            });
            return;
        }

        totalItems += quantity;

        productRow += `
            <tr id="${productID}">
                <td>${quantity}</td>
                <td>${sku}</td>
                <td>${model}</td>
                <td><button type="button" class="btn btn-danger" onclick="Product.remove('${productID}');">Remove</button></td>
            </tr>`;

        cartProducts += `<tr id="${productID}">
                            <td>${quantity}</td>
                            <td>${sku}</td>
                            <td>${model}</td>
                        </tr>`;
        productCart.push({
            quantity: quantity,
            sku: sku,
            model: model,
            serial_numbers: serial_numbers,
            productID: productID,
            productDetailsID: productDetailsID
        });
        console.log(productCart);
        $('.table').DataTable().destroy();
        $("#cart").html(productRow);
        // $('.table').DataTable();
        // Datatables no sorting
        $('.table').DataTable({
            columnDefs: [{
                targets: 'no-sort',
                orderable: false
            }]
        });
        $("#sku").val("");
        $("#model").val("");
        $("#serial_numbers").val("");
        $("#sku").focus();
        $("#item_list").html("");
        i = 0;
    });

    $("#checkout").click(function() {
        // Check if cart has items
        if (totalItems == 0) {
            swal.fire({
                title: "Error",
                text: "Please add items to cart",
                icon: "error",
                confirmButtonText: "Ok"
            });
            return;
        }
        $("#checkout_table").html(cartProducts);
        $("#total").html(totalItems);
        $('#checkoutModal').modal('show');
    });

    $("#checkout_confirm").click(function() {
        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=checkout',
            dataType: "json",
            data:{
                productCart: productCart,
                installationForm: installationForm
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
                        // Go to Installation Form Page
                        window.location.href = "installation-status.php";
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

    thisProduct.remove = (id) => {
        var row = $('#' + id);
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
                var index = -1;
                var quantity = 0;
                for (var i = 0; i < productCart.length; i++) {
                    if (productCart[i].productID == id) {
                        quantity = productCart[i].quantity;
                        totalItems -= quantity;
                        index = i;
                        break;
                    }
                }
                if (index != -1) {
                    productCart.splice(index, 1);
                }
                var pattern = new RegExp("<tr id=\"" + id + "\">.*?</tr>", "s");
                cartProducts = cartProducts.replace(pattern, "");
                productRow = productRow.replace(pattern, "");
                row.remove();
                $("#total").html(totalItems);
            }
        })
    }

    return thisProduct;
})();