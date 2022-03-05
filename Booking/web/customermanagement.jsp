<%-- 
    Document   : role
    Created on : Mar 4, 2022, 11:50:38 PM
    Author     : trant
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Customer"%>
<%@page import="DAO.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
CustomerDAO cus = new CustomerDAO();
ArrayList<Customer> list = cus.loadProduct();
%>
<!DOCTYPE html>
<html>
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
        <div class="sidebar" data-image="assets/img/sidebar-5.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="user.html" class="simple-text">
                        Booking management
                    </a>
                </div>
                <ul class="nav">
                    <li>
                        <a class="nav-link" href="./roommanage.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Room</p>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./customermanagement.jsp">
                            <i class="nc-icon nc-paper-2"></i>
                            <p>Customer</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./ordermanagement.jsp">
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
                        <div class="col-md-12">
                            <div class="card strpied-tabled-with-hover">
                                <div class="card-header ">
                                    <h4 class="card-title">Customer</h4>
                                </div>
                                
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>Customer ID</th>
                                            <th>Full Name</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Gender</th>
                                            <th>Phone</th>
                                            <th>Status</th>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (int i = 0; i < list.size(); i++) {
                                                    String status = list.get(i).getStatus() != 0 ? "Active"
                                        : "UnActive";
                                                    String gender = list.get(i).getGender()!= 0 ? "Male"
                                        : "Female";
                                            %>
                                            <tr>
                                                <td><%=list.get(i).getCustomerId()%></td>
                                                <td><%=list.get(i).getFullName()%></td>
                                                <td><%=list.get(i).getAddress()%></td>
                                                <td><%=list.get(i).getEmail()%></td>
                                                <td><%=gender%></td>
                                                <td><%=list.get(i).getPhone()%></td>
                                                <td><%=status%></td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                    
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
