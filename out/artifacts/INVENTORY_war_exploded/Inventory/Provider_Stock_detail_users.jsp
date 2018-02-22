<%-- 
    Document   : Provider_Stock_detail_users
    Created on : Nov 10, 2017, 10:49:50 AM
    Author     : ADITYA
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
         <link rel="stylesheet" href="../css/bootstrap.css">
    </head>
    <body>

<%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=null;
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
    //  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tb_stock");
%>

    <div class="table-responsive">
   <table class="table table-hover">
    <thead class="thead-inverse">
<tr>
<th>UserName</th>
<th>Reference_No</th>
<th>Quantity</th>
<th>Issue Date</th>
</tr>
    </thead>
    <tbody>           
     <%
     while (rs.next()){
         %>
     <tr><%=rs.getString("Stock_ID")%></tr>
     <tr><%=rs.getString("Stock_ID")%></tr>
     <tr><%=rs.getString("Stock_ID")%></tr>

     }
     %>
           
            </tr>
            </c:forEach>
        </tbody>
        
        </table>    
        </div>





    </body>
</html>
