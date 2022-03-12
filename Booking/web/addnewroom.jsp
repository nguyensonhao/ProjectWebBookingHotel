<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Booking Hotel</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-image="../assets/img/sidebar-5.jpg">
            <<div class="sidebar-wrapper">
                <div class="logo">
                    <a href="" class="simple-text">
                         Booking management
                    </a>
                </div>
                <ul class="nav">
                    <li  class="nav-item active">
                        <a class="nav-link" href="./roommanage.jsp">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Room</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./customermanagement.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Customer</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./ordermanage.jsp">
                            <i class="nc-icon nc-atom"></i>
                            <p>Order</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Add new Donation</h4>
                                </div>
                                <div class="card-body">
                                    <form action="addRoomServlet" method="post">
                                        <div class="row">
                                            <div class="col-md-5 pr-1">
                                                <div class="form-group">
                                                    <label>ID (disabled)</label>
                                                    <input type="text" class="form-control" disabled="" placeholder="Company" value="...">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-md-5 px-1">
                                                <div class="form-group">
                                                    <label>Room Name</label>
                                                    <input type="text" class="form-control" id="roomname" name="roomname" placeholder="Room Name" value="Room 6">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-md-5 pr-1">
                                                <div class="form-group">
                                                    <label>Price</label>
                                                    <input type="number" class="form-control" id="price" name="price" placeholder="" value="1">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-md-5 px-1">
                                                <div class="form-group">
                                                    <label>Type ID</label>
                                                    <input type="number" id="typeid" name="typeid" class="form-control" placeholder="" value="">
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                        <button type="submit" class="btn btn-info btn-fill pull-right">Add new</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
