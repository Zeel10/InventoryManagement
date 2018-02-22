<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 2/11/18
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>


<%
    String userId = request.getParameter("userId");
    String quantity = request.getParameter("quantity");
    String itemType = request.getParameter("itemType");
    String itemDetails = request.getParameter("itemDetails");
    String permissionGranted = request.getParameter("permissionGranted");
    String status="Issued";
    String returnOnnull="--";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=null;
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
        //  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
        Statement st = con.createStatement();

        int assignQuery = st.executeUpdate("INSERT INTO tb_issue(userId,itemName,status,Quantity,issuedOn) VALUES('"+userId+"','"+itemType+"','"+status+"','"+quantity+"',curtime()) ");
        Statement statementStock=con.createStatement();
        int stockQuery=statementStock.executeUpdate("UPDATE tb_stock SET quantityAvailable=quantityAvailable-'"+quantity+"' WHERE Stock_ID='"+itemType+"'");
        if (assignQuery==1 && stockQuery==1){
            response.sendRedirect("assignItems.jsp?error=0");
        }else
        {response.sendRedirect( "assignItems.jsp?error=1" );

        }

        statementStock.close();
        st.close();
        con.close();


    }catch(ClassNotFoundException e) {
        e.printStackTrace();
    };
%>
