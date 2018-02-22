<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 2/6/18
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Connection" %>
<%
String requestName=request.getParameter("requestName");
String quantity      =request.getParameter("quantity");
int quanInt=Integer.parseInt(quantity);
String itemType=request.getParameter("request_type");
String uses=request.getParameter("use");
    Date date = new Date();

    String status="Pending";
    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew", "root", "techmademe");

        Statement st = connection.createStatement();

        int query = st.executeUpdate("INSERT INTO Request_new_items(ItemsName,Uses,itemType,addedRequest,status) VALUES('" + requestName + "','" + uses + "','" + itemType + "',curtime(),'" + status + "')  ");
        if(query==1){
            response.sendRedirect("User_loggedin.jsp?error=0");
        }
        else {
            response.sendRedirect("User_loggedin.jsp?error=1");
        }
        st.close();
        connection.close();
    }catch (ClassNotFoundException e) {
        e.printStackTrace();
    };


%>
