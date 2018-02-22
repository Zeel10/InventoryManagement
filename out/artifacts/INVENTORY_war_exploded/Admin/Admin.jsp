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

</head>
<body>
<div class="container">

    <jsp:include page="adminHeader.jsp"></jsp:include>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("userid")==null) {
            response.sendRedirect("../Login_Page.jsp");
        }
    %>

    <div class="jumbotron">
    <h2>User:</h2>
    <div class="row">
<div class="col-md-6">
    <div class="card" style="width: 20rem; background-color: honeydew">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
        <h4 class="card-title">Add Users</h4>
        <p class="card-text"></p>
        <a href="Add_new_user.jsp" class="btn btn-primary">Goto Add User</a>
    </div>
</div>
</div>
        <div class="col-md-6">


                <div class="card-body">
                    <h4 class="card-title">Remove Users</h4>
                    <p class="card-text"></p>
                    <a href="RemoveUser.jsp" class="btn btn-primary">Goto Remove User</a>
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
                    <a href="User_list.jsp" class="btn btn-primary">Goto Users</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top" src="..." alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Stock</h4>
                    <p class="card-text"></p>
                    <a href="In_stock.jsp" class="btn btn-primary">Goto Stock</a>
                </div>
        </div>
    </div>

    </div>
</div>
</div>
</body>
</html>
