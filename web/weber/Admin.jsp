<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/5/17
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="http://www.w3schools.com/w3css/3/w3.css">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style>
    .footer {
        grid-row-start: 2;
        grid-row-end: 2;
        background: #42A5F5;
        color: white;
        padding: 20px;
    }
</style>
</head>
<body style="background-color:#e0e0e0">
<jsp:include page="nav.html"></jsp:include>


<div class="container" style="background-color: #ebebeb; padding-bottom: 100px;  ">
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("userid")==null) {
            response.sendRedirect("Login_Page.jsp");
        }
    %>

    <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    <h2>You are not logged in</h2>
    <h2><a href="../index.jsp">Please Login</a></h2>
    <%} else {
    %>
    <h2 style="margin-top: 60px;">Welcome <%=session.getAttribute("userid")%></h2>
    <a href='logout.jsp'>Log out</a>
    <%
        }
    %>
    <h2>User:</h2>
    <div class="row">
<div class="col-md-6">
    <div class="card" style="width: 20rem; background-color: honeydew">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
        <h4 class="card-title">Add Users</h4>
        <p class="card-text"></p>
        <a href="../Admin/Add_new_user.jsp" class="btn btn-primary">Goto Add User</a>
    </div>
</div>
</div>
        <div class="col-md-6">
            <div class="card"  style="width: 20rem;">
                <img class="card-img-top" src="..." alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Remove Users</h4>
                    <p class="card-text"></p>
                    <a href="../Admin/RemoveUser.jsp" class="btn btn-primary">Goto Remove User</a>
        </div>
            </div>
        </div>
    </div>
    <h2>Details</h2>
    <div class="row">
        <div class="col-md-6">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top" src="..." alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Users</h4>
                    <p class="card-text"></p>
                    <a href="../Provider/User_list.jsp" class="btn btn-primary">Goto Users</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top" src="..." alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Stock</h4>
                    <p class="card-text"></p>
                    <a href="../User/In_stock.jsp" class="btn btn-primary">Goto Stock</a>
                </div>
        </div>
    </div>

    </div>
</div>
<footer class="footer">
    Footer
    fkvmdfvk
</footer>
</body>
</html>
