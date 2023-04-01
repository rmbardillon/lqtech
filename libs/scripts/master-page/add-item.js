$(document).ready(function () {
    Category.loadTableData();
    Category.loadSelectData();

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

//     const today = new Date();
//     today.setDate(today.getDate() + 1);
//     const year = today.getFullYear();
//     const month = today.getMonth();
//     const dates = today.getDate();
    
//     // Set max date to today's date
//     const maxDate = new Date(year, month, dates).toISOString().split('T')[0];
//     document.getElementById("txt_manufature_date").setAttribute("max", maxDate);
    
//     let dateInput = document.getElementById('txt_expiraton_date'); 
    
//     const cur_date = new Date(); 
//     const cur_month = cur_date.getMonth() > 9 ? cur_date.getMonth() + 1 : '0' + (cur_date.getMonth() + 1); 
//     const cur_day = cur_date.getDate() > 9 ? cur_date.getDate() : '0' + cur_date.getDate();
//     const dateStr = cur_date.getFullYear() + '-' + cur_month + '-' + cur_day; 
//     dateInput.setAttribute('min', dateStr); 

// const Product = (() => {
//     // const sixMonthsFromNow = new Date();
//     // sixMonthsFromNow.setMonth(sixMonthsFromNow.getMonth() - 6 );


//     let thisProduct = {};

//     let product_id;
//     let product_details_id;
//     let toUpdate = false;


//     thisProduct.loadTableData = () => {
//         $.ajax({
//             type: "GET",
//             url: PRODUCT_CONTROLLER + '?action=getTableDataRegister',
//             dataType: "json",
//             success: function (response) {
//                 $('.table').DataTable().destroy();
//                 $('#tbody_product').html(response);

//                 $('.table').DataTable();
//             },
//             error: function () {

//             }
//         });
//     }

//     thisProduct.clickSaveButton= () => {
//         console.log('test');
//         if(!toUpdate) {
//             console.log('test2');
//             thisProduct.save()
//         }
//         else {
//             thisProduct.update()
//         }
//     }

//     thisProduct.save = () => {
//         const product_barcode = $('#txt_product_barcode').val();
//         const product_name = $('#txt_product_name').val();
//         const product_category = $('#slc_product_category').val();
//         const buying_price = $('#txt_buying_price').val();
//         const selling_price = $('#txt_selling_price').val();
//         const manufature_date = $('#txt_manufature_date').val();
//         const expiraton_date = $('#txt_expiraton_date').val();
//         const status = $('#slc_status').val();
//         const quantity = $('#txt_quantity').val();
//         const type = $('#slc_type').val();
//         const date = new Date();
//         date.setDate(date.getDate() + 180);
//         var expiration = new Date(expiraton_date);
//         // var todayDate = Date(expiraton_date);
//         const datetoday = new Date();
//         datetoday.setDate(datetoday.getDate());
//         var manufacture = new Date(manufature_date);
//         // a = todayDate.toString();

//         if(product_barcode == "" 
//         || product_name == ""
//         || product_category == ""
//         || buying_price == ""
//         || selling_price == ""
//         || manufature_date == ""
//         || expiraton_date == ""
//         || quantity == ""
//         || type == null
//         || status == null) {
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Please fillout all fields',
//                 showConfirmButton: true,
//             })
            
//         }
//         else if (manufacture >= datetoday){
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Cannot add products that is not manufactured yet',
//                 showConfirmButton: true,
//             })
//         }          
//         else if (date >= expiration){
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Expiration date is due in less than six months',
//                 showConfirmButton: true,
//             })
//         }    
//         else if (expiration <= date){
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Invalid expiration date',
//                 showConfirmButton: true,
//             })
//         }
//         else if (buying_price >= selling_price){
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Buying price should be lower than Selling price',
//                 showConfirmButton: true,
//             })

//         }
//         else {
//             $.ajax({
//                 type: "POST",
//                 url: PRODUCT_CONTROLLER + '?action=save',
//                 dataType: "json",
//                 data:{
//                     product_barcode: product_barcode,
//                     product_name: product_name,
//                     product_category: product_category,
//                     buying_price: buying_price,
//                     selling_price: selling_price,
//                     manufature_date: manufature_date,
//                     expiraton_date: expiraton_date,
//                     status: status,
//                     quantity: quantity,
//                     type: type,
//                 },
//                 success: function (response) 
//                 {
//                     thisProduct.loadTableData();
//                     thisProduct.resetFields();
//                     Swal.fire({
//                         position: 'center',
//                         icon: 'success',
//                         title: 'Product added successfully',
//                         showConfirmButton: true,
//                     })
//                 },
//                 error: function () {                }
                
                
//             });
//         }
//     }

//     thisProduct.clickUpdate = (id, product_table_id) => {
//         product_details_id = id;
//         product_id = product_table_id;

//         $.ajax({
//             type: "POST",
//             url: PRODUCT_CONTROLLER + '?action=getById',
//             dataType: "json",
//             data:{
//                 product_details_id: product_details_id
//             },
//             success: function (response) 
//             {
//                 $('#txt_product_barcode').val(response.barcode);
//                 $('#txt_product_barcode').prop( "disabled", true );
//                 $('#txt_product_name').val(response.product_name);
//                 $('#txt_product_name').prop( "disabled", true );
//                 $('#slc_product_category').val(response.category_id);
//                 $('#slc_product_category').prop( "disabled", true );
//                 $('#txt_buying_price').val(response.buy_price);
//                 $('#txt_selling_price').val(response.sale_price);
//                 // $('#txt_selling_price').prop( "disabled", true );
//                 $('#txt_manufature_date').val(response.manufacture_date);
//                 $('#txt_manufature_date').prop( "disabled", true );
//                 $('#txt_expiraton_date').val(response.expiration_date);
//                 $('#txt_expiraton_date').prop( "disabled", true );
//                 $('#slc_status').val(response.status);
//                 $('#slc_status').prop( "disabled", true );
//                 $('#txt_quantity').val(response.quantity);
//                 $('#slc_type').val(response.type);
//                 $('#slc_type').prop( "disabled", true );
                
//                 toUpdate = true;

//                 $('#btn_save_product').html('Update Product');
//             },
//             error: function () {

//             }
//         });
//     }

//     thisProduct.update = () => {
//         const buying_price = $('#txt_buying_price').val();
//         const selling_price = $('#txt_selling_price').val();
//         const quantity = $('#txt_quantity').val();
//         const manufature_date = $('#txt_manufature_date').val();
//         const expiraton_date = $('#txt_expiraton_date').val();

//         if(buying_price == ""
//         || selling_price == ""
//         || quantity == "") {
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Please fillout all fields',
//                 showConfirmButton: true,
//             })
//         }

//         else if (buying_price >= selling_price){
//             Swal.fire({
//                 position: 'center',
//                 icon: 'warning',
//                 title: 'Buying price should be lower than Selling price',
//                 showConfirmButton: true,
//             })
//         }
//         else {
//             $.ajax({
//                 type: "POST",
//                 url: PRODUCT_CONTROLLER + '?action=updateProductDetails',
//                 dataType: "json",
//                 data:{
//                     product_id: product_id,
//                     product_details_id: product_details_id,
//                     buying_price: buying_price,
//                     selling_price: selling_price,
//                     quantity: quantity,
//                     manufature_date: manufature_date,
//                     expiraton_date: expiraton_date,
                    
//                 },
//                 success: function () 
//                 {
//                     Swal.fire({
//                         position: 'center',
//                         icon: 'success',
//                         title: 'Product updated successfully',
//                         showConfirmButton: true,
//                     })
//                     thisProduct.loadTableData();
//                     thisProduct.resetFields()
//                 },
//                 error: function () {
    
//                 }
//             });
//         }
        
//     }

//     thisProduct.resetFields = () => {
//         toUpdate = false;

//         $('#txt_product_barcode').val("");
//         $('#txt_product_name').val("");
//         $('#slc_product_category').val("");
//         $('#txt_buying_price').val("");
//         $('#txt_selling_price').val("");
//         $('#txt_manufature_date').val("");
//         $('#txt_expiraton_date').val("");
//         $('#slc_status').val("");
//         $('#txt_quantity').val("");
//         $('#slc_type').val("");

//         $('.form-control').prop("disabled", false);

//         $('#btn_save_product').html('Register Product');
//     }

//     thisProduct.onChangeBarcode = () => {
//         const product_barcode = $('#txt_product_barcode').val();
//         $.ajax({
//             type:'GET',
//             url: PRODUCT_CONTROLLER + `?action=getAvailableProductByBarcode&barcode=${product_barcode}`,
//             dataType: 'json',
//             cache:false,
//             success: (response) => {               
//                 if(response.length > 0){
                    
//                     $('#txt_product_name').val(response[0].product_name);
//                     $('#txt_product_name').prop( "disabled", true );
//                     $('#slc_product_category').val(response[0].category_id);
//                     $('#slc_product_category').prop( "disabled", true );
//                     $('#txt_buying_price').val(response[0].buy_price);
//                     $('#txt_selling_price').val(response[0].sale_price);
//                     $('#slc_status').val(response[0].status);
//                     $('#slc_status').prop( "disabled", true );
//                     $('#slc_type').val(response[0].type);
//                     $('#slc_type').prop( "disabled", true );
//                 }
//                 else{
//                     $('#txt_product_name').val("");
//                     $('#slc_product_category').val("");
//                     $('#txt_buying_price').val("");
//                     $('#txt_selling_price').val("");
//                     $('#txt_manufature_date').val("");
//                     $('#txt_expiraton_date').val("");
//                     $('#slc_status').val("");
//                     $('#txt_quantity').val("");
//                     $('#slc_type').val("");

//                     $('.form-control').prop("disabled", false);
//                 }
//             }
//         })
//     }



//     return thisProduct;
// })();