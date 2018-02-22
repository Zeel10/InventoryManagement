<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>
    <div class="container">
        <jsp:include page="Logged_in_header.jsp"></jsp:include>
        <h3 style="border-bottom-color: #2aabd2; border-bottom-style: solid">Request Status</h3>
        <div class="jumbotron">
    <div class="table-responsive">
        <table class="table table-striped table-hover"   id="tb_show_request">
            <thead>
            <tr>
                <th>#</th>
                <th>Request Item</th>
                <th>Needs</th>
                <th>Status</th>
                <th>Added On</th>
            </tr>
            </thead>
            <tbody>
           <%try{
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
                Statement st=connection.createStatement();
                ResultSet rs;
                rs=st.executeQuery("SELECT * from Request_new_items");
                int no=1;
               while (rs.next()){
                  String time=rs.getString("addedRequest");
                  int space=time.indexOf(" ");
                  String date=time.substring(0,space);
                %>
            <tr>
                <td><%=no%></td>
                <td><%=rs.getString("ItemsName")%></td>
                <td><%=rs.getString("Uses")%></td>
                <td><%=rs.getString("status")%></td>
                <td><%=date%></td>

            </tr>
                <%

          no++;}
          rs.close();
          st.close();
          connection.close();

}catch(ClassNotFoundException e) {
           e.printStackTrace();
       }
finally{

}

%>


        </table>
        </div>
    </div>
        </body>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>