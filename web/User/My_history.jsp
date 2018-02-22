<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("../Login_Page.jsp");
    }%>
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
        <h3 style="border-bottom-color: #2aabd2;border-bottom-style: solid">History</h3>
        <div class="jumbotron">
    <div class="table-responsive">
    <table class="table table-striped table-hover" id="tb_show_request">
        <thead>
            <tr>
                <th>#</th>
                <th>Item</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Issue Date</th>
                <th>Returned Date</th>
            </tr>
        </thead>
                <tbody>
     <%
        Connection connection2=null;
        ResultSet resultSet2=null;
        Statement statement2=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection2=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
            statement2=connection2.createStatement();
            int sno=1;
            String user= (String) session.getAttribute("userid");
            resultSet2=statement2.executeQuery("SELECT itemName,quantity,status,issuedOn,returnedOn FROM userHistory WHERE userId='"+user+"'");
            while (resultSet2.next()){
                String returndOn=resultSet2.getString("returnedOn");

            %>
            <tr>
                <td><%=sno%></td>
                <td><%=resultSet2.getString("itemName")%></td>
                <td><%=resultSet2.getString("quantity")%></td>
                <td><%=resultSet2.getString("Status")%></td>
                <td><%=resultSet2.getString("issuedOn")%></td>
               <%
                if (returndOn==null){
               %><td>Not Returned yet</td>
                <%}
                else {
                %>
                <td><%=returndOn%></td>
                <%}%>
            </tr>
    <%      sno++;

            }
resultSet2.close();
statement2.close();
connection2.close();
        }catch(ClassNotFoundException e) {
           e.printStackTrace();
       };

        %>
    </tbody>
    </table>
    </div>
    </div>
    </div>
    </body>
</html>