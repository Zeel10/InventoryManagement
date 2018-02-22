<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.jdbc.Connection" %>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if (session.getAttribute("userid")==null) {
        response.sendRedirect("Login_Page.jsp");
    }
%>

<html>
    <meta name="viewport" content="width=device- width,initial scale=1">
    <head>
     <link rel="stylesheet" href="http://www.w3schools.com/w3css/3/w3.css">    
     <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>
     <div class="container">
         <jsp:include page="providerHeader.jsp"></jsp:include>
         <h1 style="border-bottom-color: #2aabd2; border-bottom-style: solid">Purchase Information</h1>
         <div class="jumbotron">
         <form action="serverPurchase.jsp" method="get" onsubmit=" return validateForm()">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <div class="form group">
                             <label for="purchased_from">Purchased From:</label>
                             <input type="text" style="border-bottom-color: #2aabd2;border-bottom-style: solid" class="form-control" name="purchased_from" id="purchased_from" required>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="Bill_no">Bill No.</label>
                            <input type="text" class="form-control" style="border-bottom-color: #2aabd2;border-bottom-style: solid" name="Bill_no" id="Bill_no" required>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    </div>

                    <%   try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
                   // Connection con=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
                    Statement statement=connection.createStatement();
                    ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_stock_type");
            %>
             <div class="row">
             <div class="col-md-1"></div>
             <div class="col-md-5">
                <div class="form-group">
                    <label for="stockType">Type</label>
                    <select class="form-control" id="stockType" style="border-bottom-color: #2aabd2;border-bottom-style: solid" name="stockType">
                        <%
                            while (resultSet.next()){
                                String type=resultSet.getString("Type");

                        %>
                        <option> <%=type%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
             </div>
             </div>
                    <%
                        resultSet.close();
                        statement.close();
                        connection.close();
                    }catch(ClassNotFoundException e) {
                        e.printStackTrace();}
                %>


       <div class="row">
           <div class="col-md-1"></div>
           <div class="col-md-5">
                <div class="form-group">
                    <label for="Item_detail">Item Details</label>
                    <input type="text"  style="border-bottom-color: #2aabd2;border-bottom-style: solid" class="form-control" name="Item_details" id="Item_detail" required>
                </div>
           </div>
           <div class="col-md-5">
                <div class="form-group">
                    <label for="Quantity">Quantity</label>
                    <input type="text" style="border-bottom-style: solid; border-bottom-color: #2aabd2" class="form-control" name="Quantity" id="Quantity" required onchange="quantityFunc()">
                </div>
           </div>
           <div class="col-md-1"></div>
       </div>
            <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="Price_peritem">Price Per Item</label>
                                    <input type="text" style="border-bottom-color: #2aabd2;border-bottom-style: solid" class="form-control" name="Price_peritem" id="Price_peritem" required onchange="priceFunc()">
                            </div>
                       </div>
                <div class="col-md-6">
                     <label for="multiply">Total:</label>
                    <p class="multiply" name="multiply" id="multiply" style="color: #8c8c8c"></p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
         <button type="submit" class="btn btn-block btn-primary btn-md" name="btnSubmit">Submit</button>
         <button type="reset" class="btn btn-block btn-primary btn-md">Reset</button>

                </div>
                <div class="col-md-4">
                </div>
         </div>
            </form>
         </div>
     </div>
       </body>
<script>
    var error=<%=request.getParameter("error")%>;
    var price=document.querySelector("input[name='Price_peritem']");
    var quantity=document.querySelector("input[name='Quantity']");
    var multiplyField=document.querySelector("p[name='multiply']");
    var btnSubmit=document.querySelector("button[name='btnSubmit']");
    var quantValue;
    var priceValue;
    var multi;
    function validateForm() {
        if(quantValue>50) {
            alert("Quantity Cannot be more than 50 ");
            return false;
        }
        else{
            return true;
        }
    }
    if(error==="1"){
        alert("Cannot update in database");

    }
    else if(error===0){
        alert("Successfull Updated");
    }
    else{

    }
   // price.addEventListener("click",func1);
    function quantityFunc() {
        quantValue = quantity.value;
        multiply();
    }
    function priceFunc() {
        priceValue=price.value;
        multiply();
    }
    function multiply() {
        multi=quantValue*priceValue;
        if(typeof multi==="number") {

            multiplyField.textContent = quantValue + "*" + priceValue + "=" + multi;
        }
        else{
            multi=0;
            multiplyField.textContent = quantValue + "*" + priceValue + "=" + multi;
        }
    }
    function func1() {


    if(quantity.value!=="" || price.value!=="")
    {   multiplyField.textContent="";
        var  multiply=Number(price.value)+Number(quantity.value);
        multiplyField.textContent=multiply;
    }
    else {
        multiplyField.textContent="inappro";
    }

    }
</script>
    </html>