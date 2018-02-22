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
        <sql:setDataSource 
        var="connection" 
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/inventory_db" 
        user="root" 
        password="aditya"/>
    
        <sql:query dataSource="${connection}" var="user_issue_select_query">
   SELECT * FROM tb_issue   
        </sql:query>
        
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
        <c:forEach var="row" items="${user_issue_select_query.rows}">
            
            <tr>
            <td><c:out value="${row.Issued_To}"/></td>
            <td><c:out value="${row.Reference_No}"/></td>
            <td><c:out value="${row.Quantity}"/></td>
            
           
            </tr>
            </c:forEach>
        </tbody>
        
        </table>    
        </div>





    </body>
</html>
