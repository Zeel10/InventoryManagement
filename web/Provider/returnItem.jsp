<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 2/15/18
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<html>
<head>
    <title>Return Items || Inventory Management</title>
</head>
<body>
<div class="container">
<jsp:include page="providerHeader.jsp"></jsp:include>
    <h3 style="border-bottom-color: #2aabd2; border-bottom-style: solid">Return Item</h3>

    <div class="jumbotron">
<%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
        Statement statement=connection.createStatement();
        ResultSet resultSet=statement.executeQuery("SELECT userId,itemName  from tb_issue WHERE status='Issued'");
        Statement stockSt=connection.createStatement();
        ResultSet stockrs=stockSt.executeQuery("SELECT  itemName FROM tb_issue WHERE status='Issued'");
  %>

        <div class="row">
            <form method="get" action="returnItemServer.jsp">
            <div class="col-md-3">
        <div class="form-group">
            <select class="form-control" id="userName" name="userName">
              <option value="Please Select">Please Select</option>
                <%while (resultSet.next()) {
                    String userId=resultSet.getString("userId");

                %>
                <option><%=userId%></option>

                <%
                }
                %>
            </select>
        </div>
            </div>


            <div class="col-md-3">
                <div class="form-group">
                    <select class="form-control" id="stockName" name="stockName">
                    <option value="Please Select">Please Select</option>
                    <%
                    while (stockrs.next()){
                    String itemName=stockrs.getString("itemName");
                    %>
                        <option> <%=itemName%></option>
                      <%
                    }

                    %>
                    </select>
                </div>

            </div>
            <%stockrs.close();
            stockSt.close();
            resultSet.close();
            statement.close();
            connection.close();


            }catch(ClassNotFoundException e) {
            e.printStackTrace();
            };%>
            <div class="col-md-3">
            <button type="submit" class="btn btn-block btn-primary" id="submitReturn">Return Item</button>
        </div>
            </form>
        </div>


    </div>

</div>

</body>
</html>
