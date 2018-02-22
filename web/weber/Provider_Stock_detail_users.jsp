<%-- 
    Document   : Provider_Stock_detail_users
    Created on : Nov 10, 2017, 10:49:50 AM
    Author     : ADITYA
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
    </head>
    <body>
    <div class="table-responsive">
        <table class="table table-striped table-hover"   id="tb_show_request">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Id</th>
                <th>Department</th>
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
  </tr>
  <%
          sno++;
      }%>


        </table>
        </div>
    </body>
</html>
