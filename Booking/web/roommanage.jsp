<%-- 
    Document   : useraccount
    Created on : Mar 4, 2022, 11:31:15 PM
    Author     : trant
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Room"%>
<%@page import="DAO.roomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
roomDAO room = new roomDAO();
ArrayList<Room> list = room.loadProduct();
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
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
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="user.html" class="simple-text">
                        Booking management
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="./roommanage.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Room</p>
                        </a>
                    </li>
                    <li>
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
                                    <h4 class="card-title">Room</h4>
                                    <button class="btn btn-info btn-fill pull-right"><a href="addnewroom.jsp" style="color: white">Add new</a></button>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>Room ID</th>
                                            <th>Room Name</th>
                                            <th>Image</th>
                                            <th>Price</th>
                                            <th>Status</th>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (int i = 0; i < list.size(); i++) {
                                                    String status = list.get(i).getStatus() != 0 ? "Active"
                                        : "Unactive";
                                            %>
                                            <tr>
                                                <td><%=list.get(i).getRoomId()%></td>
                                                <td><%=list.get(i).getRoomName()%></td>
                                                <td><img src="image/<%=room.getImage(list.get(i).getRoomId())%>.jpg" alt="" height="100px" width="100px"></td>
                                                <td><%=list.get(i).getPrice()%></td>
                                                <td><%=status%></td>
                                                                  <%
                                                if(list.get(i).getStatus() == 2){
                                                    
                                                    %>
                                        <td><button type="submit" class="btn btn-info btn-fill pull-right"><a href="activeRoom.jsp?roomID=<%=list.get(i).getRoomId()%>" style="color: white">Block room</a></button></td>
                                                <%}else if(list.get(i).getStatus() == 1){

                                                    %>
                                    <td><button type="submit" class="btn btn-info btn-fill pull-right"><a href="unActiveRoom.jsp?roomID=<%=list.get(i).getRoomId()%>" style="color: white">Block room</a></button></td>
                                                <%}%>
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
