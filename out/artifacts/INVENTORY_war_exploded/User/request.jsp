<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("../weber/Login_Page.jsp");
    }%>
<html>

<body>
<div class="container">
    <jsp:include page="Logged_in_header.jsp"></jsp:include>
    <h3 style="border-bottom-style: solid; border-bottom-color: #2aabd2">Request</h3>
<div class="jumbotron">
    <form action="requestServer.jsp" method="get" onsubmit="return validateForm()">
    <div class="row">
        <div class="col-md-2"></div>
     <div class="col-md-6">
        <div class="form-group">
    <label for="request_type"><p>Type:</p></label>
    <select id="request_type" name="request_type" class="form-control">


        <%
            java.sql.Connection connection=null;
            Statement statement=null;
            ResultSet resultSet=null;
            try{

                Class.forName("com.mysql.jdbc.Driver");
                connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");

                statement=connection.createStatement();
                resultSet=statement.executeQuery("SELECT TYPE FROM tb_stock_type");
                int sno2=1;
            while (resultSet.next()){
                String type=resultSet.getString("Type");

        %>
          <option> <%=type%></option>
        <%
          sno2++;  }

                resultSet.close();
                statement.close();
                connection.close();
            }catch(ClassNotFoundException e) {
                e.printStackTrace();
            }
        %>    </select>
</div>
    </div>
        <div class="col-md-2"></div>
    </div>
 <div class="row">
     <div class="col-md-2"></div>
     <div class="col-md-6">
 <div class="form-group">
     <label for="requestName">Name:</label>
      <input type="text" id="requestName" name="requestName" class="form-control">
 </div>
 </div>
 </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
 <div class="form-group">
     <label for="quantity">Quantity:</label>
<select id="quantity" name="quantity" class="form-control">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select>  </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
        <div class="form-group">
            <label for="use">Usage
            </label>
<input id="use" name="use" type="text" class="form-control">
        </div>
            </div>
        </div>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-6">
        <button type="submit" class="btn btn-primary btn-lg btn-block">Request</button>
    </div>
</div>

    </form>
</div>
    <div class="error">
            <p class="notifyField"></p>

    </div>
</div>
</body>
<script>
    var submit=document.querySelector("button");
    var Name=document.querySelector("input[name='requestName']")
    var errorField=document.querySelector(".notifyField");
    var error=<%=request.getParameter("error")%>;
    if (error==="1"){
        errorField.textContent="Cannot add";
        errorField.style.backgroundColor="red";
    }
    else if(error==="0"){
        errorField.textContent="Added";
        errorField.style.backgroundColor="green";
    }
    function validateForm(){

     if(Name.value===""){
            alert("Fields cannot be empty");
            return false;
        }
    else{
            return true;
        }
    }
</script>
</html>





