<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web_site_login</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="../fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="../css/Pretty-Header.css">
    <link rel="stylesheet" href="../css/Google-Style-Login.css">
    <link rel="stylesheet" href="../css/Pretty-Footer.css">
     <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>
    <!--Upper nav bar-->
    

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="Provider_loggedin.jsp">Inventory Management</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li  role="presentation"><a href="../../../Provider/Provider_loggedin.jsp">Items </a></li>
                    <li class="active" role="presentation"><a href="#">Users </a></li>
                    <li role="presentation"><a href="#">Third Item</a></li>
                </ul>
            </div>
        </div>
    </nav>

   <!--Lower part-->
   <div>
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#tab-1" role="tab" data-toggle="tab">Issued</a></li>
            <li><a href="#tab-2" role="tab" data-toggle="tab">Second</a></li>
            <li><a href="#tab-3" role="tab" data-toggle="tab">Third Tab</a></li>
        </ul>
        <div class="tab-content">
        <div class="tab-pane active" role="tabpanel" id="tab-1">
                <%@include file="Provider_Stock_detail_users.jsp"%></%@include>
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-2">          
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-3">
                <p>Third tab content.</p>
            </div>
        </div>
    </div>
    </html>
   
</body>

</html>