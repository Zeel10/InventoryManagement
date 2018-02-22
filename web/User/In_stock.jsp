<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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
    <div class="container">
        <jsp:include page="Logged_in_header.jsp"></jsp:include>

    <%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("userid")==null) {
            response.sendRedirect("../Login_Page.jsp");
        }%>
        <h3 style="border-bottom-style: solid;border-bottom-color: #2aabd2">In Stock</h3>
        <div class="jumbotron">
    <div class="table-responsive">
        <table class="table table-striped table-hover"   id="tb_show_request">
            <thead>
            <tr>
                <th>#</th>
                <th>ID</th>
                <th>Name</th>
                <th>Details</th>
                <th>Available</th>
            </tr>
            </thead>
            <tbody>
            <%


                java.sql.Connection connection=null;
                Statement statement=null;
                ResultSet resultSet=null;
                try{

                Class.forName("com.mysql.jdbc.Driver");
                connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");

                 statement=connection.createStatement();
                 resultSet=statement.executeQuery("SELECT * FROM tb_stock");
                int sno2=1;
                while (resultSet.next()){
                    int quantityAvailable=Integer.parseInt(resultSet.getString("quantityAvailable"));

            %>
            <tr>
                <td><%=sno2%></td>
                <td><%=resultSet.getString("Stock_ID")%>
                <td><%=resultSet.getString("Item_Name")%></td>
                <td><%=resultSet.getString("Item_Details")%></td>
                <%if (quantityAvailable<=0){
                    %>
                <td>Out Of Stock</td>
                <%}else {
                    %>
                <td><%=quantityAvailable%></td>
                <%
                }%>

            </tr>
            <%
                    sno2++;
                }
                resultSet.close();
                statement.close();
                connection.close();
                }catch(ClassNotFoundException e) {
                    e.printStackTrace();
                }
            %>
        </tbody>
        </table>    
        </div>
    </div>
    </div>
        </body>
    <script src="../js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</html>