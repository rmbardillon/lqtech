$(document).ready(function () {
    Category.loadTableData();
    Product.loadTableData();

    $('.btn').click(function (event){
        event.preventDefault()
    })
});

$("#category").change(function() {
    if($(this).val() == "Camera") {
        var input = `
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label required" for="brand">Brand</label>
                <select class="form-select brand" name="" id="brand">
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="model">Model</label>
                <select class="form-select model" name="" id="model">
                </select>
            </div>
        </div>
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <label class="form-label required" for="camera_type">Camera Type</label>
                <select class="form-select" id="camera_type">
                    <option value="" disabled selected>- Select Camera Type -</option>
                    <option value="IP">IP</option>
                    <option value="Analog">Analog</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="camera_shape">Camera Shape</label>
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
                <input class="form-control" type="number" id="buying_price" value="0">
            </div>
            <div class="col">
                <label class="form-label" for="selling_price">Selling Price</label>
                <input class="form-control" type="number" id="selling_price" value="0">
            </div>
        </div>
    `;
    } else if($(this).val() == "Recorder") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="brand">Brand</label>
                    <select class="form-select brand" name="" id="brand">
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="model">Model</label>
                    <select class="form-select model" name="" id="model">
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="recorder_type">Recorder Type</label>
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
                    <input class="form-control" type="number" id="buying_price" value="0">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price" value="0">
                </div>
            </div>
        `;
    } else if($(this).val() == "Hard drive") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="brand">Brand</label>
                    <select class="form-select brand" name="" id="brand">
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="model">Model</label>
                    <select class="form-select model" name="" id="model">
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="capacity">Capacity</label>
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
                    <input class="form-control" type="number" id="buying_price" value="0">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price" value="0">
                </div>
            </div>
        `;
    } else if($(this).val() == "Power Supply") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="brand">Brand</label>
                    <select class="form-select brand" name="" id="brand">
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="model">Model</label>
                    <select class="form-select model" name="" id="model">
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="psu_type">PSU Type</label>
                    <select class="form-select" id="psu_type">
                        <option value="" disabled selected>- Select PSU Type -</option>
                        <option value="Metal Type">Metal Type</option>
                        <option value="Fuse Type">Fuse Type</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="watts">Watts</label>
                    <input class="form-control" id="watts">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price" value="0">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price" value="0">
                </div>
            </div>
        `;
    } else if($(this).val() == "Monitor") {
        var input = `
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="brand">Brand</label>
                    <select class="form-select brand" name="" id="brand">
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="model">Model</label>
                    <select class="form-select model" name="" id="model">
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label required" for="monitor_size">Monitor Size</label>
                    <select class="form-select" id="monitor_size">
                        <option value="" disabled selected>- Select Monitor Size -</option>
                        <option value="19 Inches">19 Inches</option>
                        <option value="20 Inches">20 Inches</option>
                        <option value="22 Inches">22 Inches</option>
                        <option value="32 Inches">32 Inches</option>
                        <option value="43 Inches">43 Inches</option>
                        <option value="55 Inches">55 Inches</option>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col">
                    <label class="form-label" for="buying_price">Buying Price</label>
                    <input class="form-control" type="number" id="buying_price" value="0">
                </div>
                <div class="col">
                    <label class="form-label" for="selling_price">Selling Price</label>
                    <input class="form-control" type="number" id="selling_price" value="0">
                </div>
            </div>
        `;
    } else {
        var input = '';
    }
    $('#inputs').html(input);
    Category.loadSelectData();
    $(".model").select2({
        placeholder: "Search for an option...",
        allowClear: true,
    });
       
    $('.brand').select2({
        placeholder: 'Search for an option...',
        allowClear: true,
    });
    $(document).on("select2:open", function (e) {
      document
        .querySelector(`[aria-controls="select2-${e.target.id}-results"]`)
        .focus();
    });
});

const Category = (() => {
    const thisCategory = {};

    let model_id = '';

    let toUpdate = false;

    thisCategory.setToUpdate = (value) => {
      toUpdate = value;
    };

    thisCategory.setModelId = (value) => {
      model_id = value;
    };

    thisCategory.loadTableData = () => {
        $.ajax({
            type: "GET",
            url: CATEGORY_CONTROLLER + '?action=getTableData',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_category').html(response);

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

        $.ajax({
            type: "GET",
            url: CATEGORY_CONTROLLER + '?action=getBrandTableData',
            dataType: "json",
            success: function (response) {
                $('.table').DataTable().destroy();
                $('#tbody_brand').html(response);

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

    thisCategory.loadSelectData = () => {
        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=getSelectData',
            dataType: "json",
            data: {
                category: $('#category').val()
            },
            success: function (response) {
                $('.model').html(response);
            },
            error: function () {

            }
        });

        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=getBrandSelectData',
            dataType: "json",
            data: {
                category: $('#category').val()
            },
            success: function (response) {
                $('.brand').html(response);
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
        const model_name = $('#txt_category_name').val().trim();
        const category = $('#category').val();
        const specification = $('#specification').val();

        if(model_name == "" || category == null || specification == null) {
            Swal.fire({
                position: 'center',
                icon: 'warning',
                title: 'Model Field should have value',
                showConfirmButton: true,
            })
        }
        else {
            $.ajax({
                type: "POST",
                url: CATEGORY_CONTROLLER + '?action=save',
                dataType: "json",
                data:{
                    model_name: model_name,
                    category: category,
                    specification: specification
                },
                success: function (response) 
                {
                    $('#txt_category_name').val("");
                    $('#category').val("");
                    $('#specification').val("");
                    thisCategory.loadTableData();
                    thisCategory.loadSelectData();
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        title: 'Specification added successfully',
                        showConfirmButton: true,
                    })
                },
                error: function () {
    
                }
            });
        }        
    }

    thisCategory.clickUpdate = (id) => {
        model_id = id;

        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + '?action=getById',
            dataType: "json",
            data:{
                model_id: model_id
            },
            success: function (response) 
            {
                console.log(response)
                $('#txt_category_name').val(response.MODEL);
                $('#category').val(response.CATEGORY);
                toUpdate = true;
                $('#btn_save_category').html('Update MODEL');
            },
            error: function () {

            }
        });
    }

    thisCategory.update = () => {
        const model_name = $('#txt_category_name').val().trim();
        const category = $('#category').val();
        const specification = $('#specification').val();

        $.ajax({
          type: "POST",
          url: CATEGORY_CONTROLLER + "?action=update",
          dataType: "json",
          data: {
            model_id: model_id,
            model_name: model_name,
            category: category,
            specification: specification,
          },
          success: function (response) {
            $("#txt_category_name").val("");
            $("#specification").val("");
            $("#category").val("");
            thisCategory.loadTableData();
            thisCategory.loadSelectData();
            $("#btn_save_category").html("Register Model");
            toUpdate = false;
            Swal.fire({
              position: "center",
              icon: "success",
              title: "Model updated successfully",
              showConfirmButton: true,
            });
          },
          error: function () {},
        });
    }

    thisCategory.clickCancel = () => {
        $('#txt_category_name').val("")
        toUpdate = false;
        $('#btn_save_category').html('Register Model');
    }

    thisCategory.clickCancel = () => {
        $('#txt_category_name').val("")
        toUpdate = false;
        $('#btn_save_category').html('Register Model');
    }

    thisCategory.clickDelete = (id) => {
        model_id = id

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
                model_id: model_id
            },
            success: function (response) 
            {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Model Deleted Successfully ',
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

const Brand = (() => {
    const thisBrand = {};

    let brand_id = '';

    thisBrand.clickUpdate = (id) => {
        brand_id = id;
        Category.setModelId(id);
        Category.setToUpdate(true);
        $.ajax({
            type: "POST",
            url: CATEGORY_CONTROLLER + "?action=getBrandById",
            dataType: "json",
            data: {
            brand_id: brand_id,
            },
            success: function (response) {
                $("#specification").val("Brand");
                $("#txt_category_name").val(response.BRAND);
                $("#category").val(response.CATEGORY);
                
                $("#btn_save_category").html("Update BRAND");
            },
            error: function () {},
        });
    };

    thisBrand.clickCancel = () => {
      $("#txt_category_name").val("");
      toUpdate = false;
      $("#btn_save_category").html("Register Model");
    };

    thisBrand.clickDelete = (id) => {
      brand_id = id;

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes!",
        cancelButtonText: "No",
      }).then((result) => {
        if (result.isConfirmed) {
          thisBrand.delete();
        }
      });
    };

    thisBrand.delete = () => {
      $.ajax({
        type: "POST",
        url: CATEGORY_CONTROLLER + "?action=deleteBrand",
        dataType: "json",
        data: {
          brand_id: brand_id,
        },
        success: function (response) {
          Swal.fire({
            position: "center",
            icon: "success",
            title: "Brand Deleted Successfully ",
            showConfirmButton: false,
            timer: 1500,
          });
          Category.loadTableData();
          Category.loadSelectData();
        },
        error: function () {},
      });
    };

    return thisBrand;
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
        var category = $("#category").val();
        var brand = $("#brand").val();
        var model = $("#model").val();
        var buying_price = $("#buying_price").val();
        var selling_price = $("#selling_price").val();

        console.log(model);
        var productData = {
            category: category,
            brand: brand,
            model: model,
            buying_price: buying_price,
            selling_price: selling_price,
        };

        if(category == "Camera") {
            var camera_type = $("#camera_type").val();
            var camera_shape = $("#camera_shape").val();
            productData.camera_type = camera_type;
            productData.camera_shape = camera_shape;
        } else if(category == "Recorder") {
            var recorder_type = $("#recorder_type").val();
            productData.recorder_type = recorder_type;
        } else if(category == "Hard drive") {
            var capacity = $("#capacity").val();
            productData.capacity = capacity;
        } else if(category == "Power Supply") {
            var psu_type = $("#psu_type").val();
            var watts = $("#watts").val();
            productData.psu_type = psu_type;
            productData.watts = watts;
        } else if(category == "Monitor") {
            var monitor_size = $("#monitor_size").val();
            productData.monitor_size = monitor_size;
        }

        console.log(productData);
        $.ajax({
          type: "POST",
          url: PRODUCT_CONTROLLER + "?action=save",
          data: {
            productData: productData,
          },
          success: function (response) {
            thisProduct.loadTableData();
            thisProduct.resetFields();
            Swal.fire({
              position: "center",
              icon: "success",
              title: "Product added successfully",
              showConfirmButton: true,
            });
          },
          error: function () {},
        });
    }

    thisProduct.resetFields = () => {
        toUpdate = false;

        $('#category').val("");
        $("#category").prop("disabled", false);
        $('#inputs').html('');
        $("#btn_save_product").html("Register");
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
            // dataType: "json",
            data:{
                product_id: product_id
            },
            success: function (response) 
            {   
                response = JSON.parse(response);
                if(response.CATEGORY == "Camera") {
                    $('#category').val("Camera");
                    $('#category').trigger("change").promise().done(function() {
                        $("#camera_type").val(response.CAMERA_TYPE);
                        $("#camera_shape").val(response.CAMERA_SHAPE);
                        $("#camera_type").prop("disabled", true);
                        $("#camera_shape").prop("disabled", true);

                        assignValuesToElements()
                    });
                } else if(response.CATEGORY == "Recorder") {
                    $('#category').val("Recorder");
                    $('#category').trigger("change").promise().done(function() {
                        $("#recorder_type").val(response.RECORDER_TYPE);
                        $("#recorder_type").prop("disabled", true);

                        assignValuesToElements()
                    });
                } else if(response.CATEGORY == "Hard drive") {
                    $('#category').val("Hard drive");
                    $('#category').trigger("change").promise().done(function() {
                        $("#capacity").val(response.CAPACITY);
                        $("#capacity").prop("disabled", true);

                        assignValuesToElements()
                    });
                } else if(response.CATEGORY == "Power Supply") {
                    $('#category').val("Power Supply");
                    $("#category").trigger("change").promise().done(function () {
                        $("#psu_type").val(response.PSU_TYPE);
                        $("#watts").val(response.WATTS);
                        $("#psu_type").prop("disabled", true);
                        $("#watts").prop("disabled", true);

                        assignValuesToElements()
                    });
                } else if(response.CATEGORY == "Monitor") {
                    $('#category').val("Monitor");
                    $('#category').trigger("change").promise().done(function() {
                        $("#monitor_size").val(response.MONITOR_SIZE);
                        $("#monitor_size").prop("disabled", true);

                        assignValuesToElements()
                    });
                }
                function assignValuesToElements() {
                  // Undo Select2 initialization for the ".model" element
                  $(".model").select2("destroy");

                  // Undo Select2 initialization for the ".brand" element
                  $(".brand").select2("destroy");
                  // Get the select element by its ID
                  var brand = $("#brand");

                  // Get the select element's attributes
                  var attributes = brand.prop("attributes");

                  // Create a new input element
                  var inputBrand = $("<input>");

                  // Copy the attributes from the select element to the input element
                  $.each(attributes, function () {
                    inputBrand.attr(this.name, this.value);
                  });
                  inputBrand.val(response.BRAND);
                  brand.replaceWith(inputBrand);
                  // Get the select element by its ID
                  var model = $("#model");

                  // Get the select element's attributes
                  var attributes = model.prop("attributes");

                  // Create a new input element
                  var inputModel = $("<input>");

                  // Copy the attributes from the select element to the input element
                  $.each(attributes, function () {
                    inputModel.attr(this.name, this.value);
                  });
                  inputModel.val(response.MODEL);
                  model.replaceWith(inputModel);

                  $("#buying_price").val(response.BUYING_PRICE);
                  $("#selling_price").val(response.SELLING_PRICE);
                  $("#serial_number").val(response.SERIAL_NUMBER);

                  $("#category").prop("disabled", true);
                  $("#brand").prop("disabled", true);
                  $("#model").prop("disabled", true);
                }
                
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