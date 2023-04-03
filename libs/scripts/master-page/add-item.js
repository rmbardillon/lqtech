$(document).ready(function () {
    Category.loadTableData();
    Category.loadSelectData();
    Product.loadTableData();

    // Product.loadTableData();

    $('.btn').click(function (event){
        event.preventDefault()
    })
});

$("#category").change(function() {
    if($(this).val() == "Camera") {
        var input = `
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label" for="brand">Brand</label>
                <input type="text" class="form-control" id="brand">
            </div>
            <div class="col">
                <label class="form-label" for="model">Model</label>
                <input type="text" class="form-control" id="model">
            </div>
        </div>
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label" for="camera_type">Camera Type</label>
                <select class="form-select" id="camera_type">
                    <option value="" disabled selected>- Select Camera Type -</option>
                    <option value="IP">IP</option>
                    <option value="Analog">Analog</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label" for="camera_shape">Camera Shape</label>
                <select class="form-select" id="camera_shape">
                    <option value="" disabled selected>- Select Camera Shape -</option>
                    <option value="Dome">Dome</option>
                    <option value="Bullet">Bullet</option>
                </select>
            </div>
        </div>
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label" for="buying_price">Buying Price</label>
                <input class="form-control" type="number" id="buying_price">
            </div>
            <div class="col">
                <label class="form-label" for="selling_price">Selling Price</label>
                <input class="form-control" type="number" id="selling_price">
            </div>
        </div>
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label" for="serial_number">Serial Numbers</label>
                <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
            </div>
        </div>
    `;
    } else if($(this).val() == "Recorder") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="brand">Brand</label>
                    <input type="text" class="form-control" id="brand">
                </div>
                <div class="col">
                    <label class="form-label" for="model">Model</label>
                    <input type="text" class="form-control" id="model">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="recorder_type">Recorder Type</label>
                    <select class="form-select" id="recorder_type">
                        <option value="" disabled selected>- Select Recorder Type -</option>
                        <option value="DVR">DVR</option>
                        <option value="NVR">NVR</option>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="serial_number">Serial Numbers</label>
                    <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
        `;
    } else if($(this).val() == "Hard drive") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="brand">Brand</label>
                    <input type="text" class="form-control" id="brand">
                </div>
                <div class="col">
                    <label class="form-label" for="model">Model</label>
                    <input type="text" class="form-control" id="model">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="capacity">Capacity</label>
                    <select class="form-select" id="capacity">
                        <option value="" disabled selected>- Select Capacity -</option>
                        <option value="1TB">1TB</option>
                        <option value="2TB">2TB</option>
                        <option value="4TB">4TB</option>
                        <option value="6TB">6TB</option>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="serial_number">Serial Numbers</label>
                    <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
        `;
    } else if($(this).val() == "Power Supply") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="brand">Brand</label>
                    <input type="text" class="form-control" id="brand">
                </div>
                <div class="col">
                    <label class="form-label" for="model">Model</label>
                    <input type="text" class="form-control" id="model">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="psu_type">PSU Type</label>
                    <select class="form-select" id="psu_type">
                        <option value="" disabled selected>- Select PSU Type -</option>
                        <option value="Metal Type">Metal Type</option>
                        <option value="Fuse Type">Fuse Type</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label" for="watts">Watts</label>
                    <input class="form-control" id="watts">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="serial_number">Serial Numbers</label>
                    <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
        `;
    } else if($(this).val() == "Monitor") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="brand">Brand</label>
                    <input type="text" class="form-control" id="brand">
                </div>
                <div class="col">
                    <label class="form-label" for="model">Model</label>
                    <input type="text" class="form-control" id="model">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="monitor_size">Monitor Size</label>
                    <select class="form-select" id="monitor_size">
                        <option value="" disabled selected>- Select Monitor Size -</option>
                        <option value="19 Inches">19 Inches</option>
                        <option value="20 Inches">20 Inches</option>
                        <option value="32 Inches">32 Inches</option>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="serial_number">Serial Numbers</label>
                    <textarea class="form-control" id="serial_number" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
        `;
    } else {
        var input = '';
    }
    $('#inputs').html(input);
});

const Category = (() => {
    const thisCategory = {};

    let category_id = '';

    let toUpdate = false;

    thisCategory.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: CATEGORY_CONTROLLER + '?action=getTableData',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_category').html(response);

                $('.table').DataTable();
            },
            error: function () {

            }
        });
    }

    thisCategory.loadSelectData = () => {
        $.ajax({
            type: "GET",
            url: CATEGORY_CONTROLLER + '?action=getSelectData',
            dataType: "json",
            success: function (response) {

                $('#slc_product_category').html(response);
            },
            error: function () {

            }
        });
    }

    thisCategory.clickSaveButton= () => {
        if(!toUpdate) {
            thisCategory.save()
        }
        else {
            thisCategory.update()
        }
    }

    thisCategory.save = () => {
        const category_name = $('#txt_category_name').val();

        if(category_name == "") {
            Swal.fire({
                position: 'center',
                icon: 'warning',
                title: 'Category Field should have value',
                showConfirmButton: true,
            })
        }
        else {
            $.ajax({
                type: "POST",
                url: CATEGORY_CONTROLLER + '?action=save',
                dataType: "json",
                data:{
                    category_name: category_name
                },
                success: function (response) 
                {
                    $('#txt_category_name').val("")
                    thisCategory.loadTableData();
                    thisCategory.loadSelectData();
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        title: 'Category added successfully',
                        showConfirmButton: true,
                    })
                },
                error: function () {
    
                }
            });
        }        
    }

    thisCategory.clickUpdate = (id) => {
        category_id = id;

        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=getById',
            dataType: "json",
            data:{
                category_id: category_id
            },
            success: function (response) 
            {
                $('#txt_category_name').val(response.CATEGORY);
                toUpdate = true;

                $('#btn_save_category').html('Update Category');
            },
            error: function () {

            }
        });
    }

    thisCategory.update = () => {
        const category_name = $('#txt_category_name').val();

        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=update',
            dataType: "json",
            data:{
                category_id: category_id,
                category_name: category_name
            },
            success: function (response) 
            {
                $('#txt_category_name').val("")
                thisCategory.loadTableData();
                thisCategory.loadSelectData();
                $('#btn_save_category').html('Register Category');
                toUpdate = false;
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Category updated successfully',
                    showConfirmButton: true,
                })
            },
            error: function () {

            }
        });
    }

    thisCategory.clickCancel = () => {
        $('#txt_category_name').val("")
        toUpdate = false;
        $('#btn_save_category').html('Register Category');
    }

    thisCategory.clickCancel = () => {
        $('#txt_category_name').val("")
        toUpdate = false;
        $('#btn_save_category').html('Register Category');
    }

    thisCategory.clickDelete = (id) => {
        category_id = id

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
                thisCategory.delete();
            }
        })
    }

    thisCategory.delete = () => {
        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=delete',
            dataType: "json",
            data:{
                category_id: category_id
            },
            success: function (response) 
            {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Category Deleted Successfully ',
                    showConfirmButton: false,
                    timer: 1500
                })
                thisCategory.loadTableData();
                thisCategory.loadSelectData();
            },
            error: function () {

            }
        });
    }

    return thisCategory;
})();

const Product = (() => {
    const thisProduct = {};
    let toUpdate = false;
    let product_id = '';

    thisProduct.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: PRODUCT_CONTROLLER + '?action=getTableDataRegister',
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
        var category = $("#category").val();
        var brand = $("#brand").val();
        var model = $("#model").val();
        var buying_price = $("#buying_price").val();
        var selling_price = $("#selling_price").val();
        var serial_number = $("#serial_number").val();
        var data = {
            category: category,
            brand: brand,
            model: model,
            buying_price: buying_price,
            selling_price: selling_price,
            serial_number: serial_number,
        };

        if(category == "Camera") {
            var camera_type = $("#camera_type").val();
            var camera_shape = $("#camera_shape").val();
            data.camera_type = camera_type;
            data.camera_shape = camera_shape;
        } else if(category == "Recorder") {
            var recorder_type = $("#recorder_type").val();
            data.recorder_type = recorder_type;
        } else if(category == "Hard drive") {
            var capacity = $("#capacity").val();
            data.capacity = capacity;
        } else if(category == "Power Supply") {
            var psu_type = $("#psu_type").val();
            var watts = $("#watts").val();
            data.psu_type = psu_type;
            data.watts = watts;
        } else if(category == "Monitor") {
            var monitor_size = $("#monitor_size").val();
            data.monitor_size = monitor_size;
        }

        $.ajax({
            type: "POST",
            url: PRODUCT_CONTROLLER + '?action=save',
            dataType: "json",
            data:{
                data: data
            },
            success: function (response) 
            {
                thisProduct.loadTableData();
                thisProduct.resetFields();
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Product added successfully',
                    showConfirmButton: true,
                })
            },
            error: function () {

            }
            
            
        });
    }

    thisProduct.resetFields = () => {
        toUpdate = false;

        $('#category').val("");
        $('#inputs').html('');
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
                // thisProduct.loadSelectData();
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