<!-- <script src="../../libs/plugins/bootstrap/bootstrap.bundle.min.js"></script> -->
<script src="../../libs/plugins/jquery/jquery-3.6.1.min.js"></script>
<script src="../../libs/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../libs/plugins/datatables/dataTables.bootstrap5.min.js"></script>
<script src="../../libs/plugins/chart.js/chart.js"></script>
<script src="../../libs/plugins/select2/js/select2.full.min.js"></script>
<script src="../../libs/plugins/sweetalert/sweetalert.all.min.js"></script>

<script src="../../config/system_name.js"></script>
<script src="../../libs/scripts/vars.js"></script>
<script>
    const logout = () => {
        event.preventDefault();
        Swal.fire({
            title: 'Are you sure?',
            text: "You want to logout?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!',
            cancelButtonText: 'No'
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    type: "POST",
                    url: "../../data/controller/LoginController.php?action=logout",
                    dataType: "json",
                    success: function (response) 
                    {
                        window.location.href = "../../views/master-page/login.php";
                    },
                    error: function () {
                    }
                }); 
            }
        })
    }
</script>
<script src="../../libs/scripts/master-page/alerts.js" ></script>