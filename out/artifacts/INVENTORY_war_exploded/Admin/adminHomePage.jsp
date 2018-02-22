<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 2/19/18
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("../Login_Page.jsp");
    }
%>

<html>
<head>
    <title>Home Page||Admin||Inventory Management</title>
</head>
<body>


<div class="container">
    <jsp:include page="adminHeader.jsp"></jsp:include>
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-3">
                <p>Admin Panel</p></div>
            <div class="col-md-3">

                <%
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root","techmademe");
                        Statement st=con.createStatement();
                        ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM tb_user");
                        Statement statement=con.createStatement();
                        ResultSet resultSet=statement.executeQuery("SELECT  COUNT(*) from tb_stock ");
                        String Countrow="";
                        String Countrow2="";
                        while(rs.next()){
                            Countrow = rs.getString(1);
                            %>
                <p>Total Users :<%=Countrow%></p>
                <%
                        }

                %>
            </div>
            <div class="col-md-3">
            <%
                while(resultSet.next()){
                    Countrow2 = resultSet.getString(1);
            %>
                <p>Total Stock Types:<%=Countrow2%></p>


<%
        }

                }
                catch (Exception e){
                e.printStackTrace();
                }
  %>
            </div>
        </div>


    </div>
</div>
</body>
</html>
