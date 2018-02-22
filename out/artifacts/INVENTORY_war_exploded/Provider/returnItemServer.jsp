<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Driver" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 2/15/18
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName=request.getParameter("userName");
    String itemName=request.getParameter("stockName");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection= DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew\",\"root\",\"techmademe");

    }catch(ClassNotFoundException e) {
        e.printStackTrace();
    };




%>
