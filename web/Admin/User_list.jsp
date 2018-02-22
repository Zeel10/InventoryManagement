<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/2/17
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
    th{
        background-color: #0f0f0f;
        color: #2aabd2;
    }
</style>
</head>
<body>

<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("../Login_Page.jsp");
    }%>
<div class="container">

<jsp:include page="adminHeader.jsp"></jsp:include>
<h1 style="border-bottom-style: solid; border-bottom-color: #2aabd2">User List</h1>
    <div class="jumbotron" style="border-bottom-color: #2aabd2;border-bottom-style: solid">
<div class="table-responsive">
    <table class="table table-striped table-hover"   id="tb_show_request">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Id</th>
            <th>Department</th>
            <th>Added On</th>
        </tr>
        </thead>
        <tbody>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");

    Statement statement=connection.createStatement();
    ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_user");
    int sno=1;
      while (resultSet.next()){
%>
        <tr>
         <td><%=sno%></td>
        <td><%=resultSet.getString("Name")%>
            <td><%=resultSet.getString("ID_No")%></td>
            <td><%=resultSet.getString("Department")%></td>
            <td><%=resultSet.getString("addOn")%></td>
        </tr>
        <%
      sno++;
      }%>
        </tbody>
    </table>
</div>
</div>
</div>
</body>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</html>
