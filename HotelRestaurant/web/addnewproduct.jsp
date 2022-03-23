<%-- 
    Document   : addnewproduct
    Created on : Mar 9, 2022, 9:05:42 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Add new</title>
        <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style1.css" type="text/css">
        </style>
    </head>
    <body>
<div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>Product</h2>
                        <form action="AddNewProduct" method="POST">
                            <div class="group-input">
                                <label name="productName">Product Name</label>
                                <input type="text" name="productName" value="">
                            </div>
                            <div class="group-input">
                                <label name="image">Product Image</label>
                                <input type="text" name="image" value="">
                            </div>
                            <div class="group-input">
                                <label name="price">Product Price</label>
                                <input type="text" name="price" value="">
                            </div>
                            <div class="group-input">
                                <label name="quantity">Product Quantity</label>
                                <input type="text" name="quantity" value="">
                            </div>
                            <div class="group-input">
                                <label name="category">Product Category ID</label>
                                <input type="number" name="category" value="">
                            </div>
                            <div class="group-input">
                                <label name="importdate">Product Import Date</label>
                                <input type="date" name="importdate" value="">
                            </div>
                            <div class="group-input">
                                <label name="usingdate">Product Using Date</label>
                                <input type="date" name="usingdate" value="">
                            </div>
                            <button type="submit" class="site-btn register-btn">Add new</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/jquery.dd.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>