<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/6/17
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("../Login_Page.jsp");
    }%>


<div class="container">
    <jsp:include page="adminHeader.jsp"></jsp:include>
    <h3 style="border-bottom-style: solid;border-bottom-color: #2aabd2">Remove User</h3>
    <div class="jumbotron">

<div class="form-group">
    <form action="RemoveUserServer.jsp" method="get">
        <%  String sessionUser=session.getAttribute("userid").toString();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
            Statement statement=con.createStatement();
            ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_user WHERE ID_No!='" +sessionUser+ "' ");
    %>
    <div class="form-group">
        <label for="delid">UserID</label>
        <select class="form-control" id="delid" name="delid">
            <%
                while (resultSet.next()){
                     String Id=resultSet.getString("ID_No");
                    String Name=resultSet.getString("Name");
                    String idName=Id+"-"+Name;
            %>
            <option> <%=idName%></option>
            <%
                }
            %>
        </select>

            <%
                resultSet.close();
                statement.close();
                con.close();
            }catch (Exception e)
            {
                out.println(e.getMessage());
            }
        %>
    </div>

    <button type="submit"  class="btn btn-primary btn-md">Submit</button>
<p class="status"></p>
</form>

</div>
</div>
</div>
</body>

<script>
/*function validateForm() {
    var submitBtn   =document.querySelector("button");
    var selectField =document.querySelector("select");
    var selected    =selectField.options[selectField.selectedIndex].value.toString();
    var sessionUser%=session.getAttribute("userid")%>;
    if(sessionUser===selected){
        alert("U are Deleting Yourself!!!");
    }
    }
*/
var errorField=document.querySelector(".status");
var selectField=document.querySelector("select");
var getError=<%=request.getParameter("error")%>;

alert(getError);
if(getError==1)
{   var uName=<%=request.getParameter("userName")%>
    errorField.style.backgroundColor="red";
    errorField.textContent="Not able to Remove user";

}
else if(getError==0){
    alert(" SuccessFully Deleted");
  /*  var userName=%=request.getParameter("user")%>
    errorField.style.backgroundColor="green";
    errorField.textContent="Success"+userName+"deleted";
*/

}

</script>
</html>