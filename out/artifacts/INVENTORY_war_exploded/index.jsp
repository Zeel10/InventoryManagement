
<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/1/17
  Time: 2:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web_site_login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
<div class="container" >
    <jsp:include page="Login/indexHeader.jsp"></jsp:include>
        <div class="jumbotron">
    <form action="Login/Login_Page.jsp" method="post">
        <center><button type="submit" class="btn btn-primary btn-lg">LOG IN</button></center>
    </form>
    <h1 style="border-bottom-color: #2aabd2">Welcome to Inventory Management</h1>
    <br>
    <h3 style="font-family: Consolas">A website that gives proper management of the inventory.
    <br><BR>
    Managing Inventory is very important part in any system. It is also a difficult process.
    <br><br>
    Get away from all the Physical Stuff,<br>
    Keep every record in a system<br>
    Easily Accessible<br>
        Go <span style="color: green ">Paperfree</span><br>
    Digital India</h3>


        </div>
</div>




</body>
</html>