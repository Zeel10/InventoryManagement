<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>


<html>

<head>

	<title>Issue Items || Inventory Management</title>

	<link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">

     <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>

	<div class="container">
		<jsp:include page="providerHeader.jsp"></jsp:include>
        <h2 style="border-bottom-color: #2aabd2; border-bottom-style: solid">Issue Item</h2>
		<div class="jumbotron">
		<div class="row">

		</div>

		<!--<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
			-->
				<form action="assignItems.jsp" method="get">
					<%
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
						Statement statement=connection.createStatement();
						ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_user");
						//Connection connection= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
						// Connection con=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
						//Statement statement=connection.createStatement();
						//ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_stock_type");
					%>
					<div class="row">
                        <div class="col-md-3">
					<div class="form-group">
						<label for="userId">User Id</label>
						<select class="form-control" id="userId" name="userId" required>
						<option value="Please Select">Please Select</option>
							<%
								while (resultSet.next()){
									String ID_No=resultSet.getString("ID_No");
									String Name=resultSet.getString("Name");
									String desigNation=resultSet.getString("Designation");
									String totalInfo=ID_No+"-"+Name+"-"+desigNation;
							%>
							<option> <%=ID_No%></option>
							<%
									}
									resultSet.close();
									statement.close();
									connection.close();
								}catch(ClassNotFoundException e) {
									e.printStackTrace();}
							%>

						</select>
					</div>
                        </div>
					<div class="col-md-3">
					<div class="form-group">
						<label for="permissionGranted">Permission Granted by</label>
						<input type="text" class="form-control" id="permissionGranted" required>
					</div>
                    </div>
                    </div>
					<div class="row">
                         <div class="col-md-3">
					<div class="form-group">
              			<label for="itemType">Item Type:</label>
						<%   try{
							Class.forName("com.mysql.jdbc.Driver");
							Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
							Statement statement=connection.createStatement();
							ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_stock_type");
							//Connection connection= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
							// Connection con=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
							//Statement statement=connection.createStatement();
							//ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_stock_type");
						%>
              			<select class="form-control" name="itemType" id="itemType" required>
                			<option value="Please Select">Please Select</option>

							<%String type;
								while (resultSet.next()){
									 type=resultSet.getString("Type");

							%>
							<option> <%=type%></option>

							<%}%>
              			</select>
            		</div>
                         </div>
                        <div class="col-md-3">
            		<div class="form-group">
              			<label for="itemDetails">Item Details</label>
              			<input type="text" class="form-control" name="itemDetails" id="itemDetails" required>
            		</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
					<div class="form-group">
						<label for="quantity">Quantity</label>
						<select class="form-control" name="quantity"id="quantity">
						    <option value="Please Select">Please Select</option>

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


						</select>
						<%		resultSet.close();
								statement.close();
								connection.close();
							}catch(ClassNotFoundException e) {
								e.printStackTrace();}
						%>
					</div>
                        </div>
                    </div>
					<div class="row" style="height: 10px;"></div>
					<button type="submit" class="btn btn-success">Submit</button>
					<button type="reset" class="btn btn-success">Reset</button>
				</form>
			<%
				String userId = request.getParameter("userId");
				String quantity = request.getParameter("quantity");
				String itemType = request.getParameter("itemType");
				String itemDetails = request.getParameter("itemDetails");
				String permissionGranted = request.getParameter("permissionGranted");
				String status="Issued";
				String returnOnnull="--";

				if(userId==null &&quantity==null && itemType==null && permissionGranted==null && itemDetails==null){

				}else {
					if (userId.length() == 0 && quantity.length() == 0 && itemType.length() == 0 && permissionGranted.length() == 0 && itemDetails.length() == 0) {

					} else {
						try {
							int err=2;
							Class.forName("com.mysql.jdbc.Driver");
							java.sql.Connection con = null;
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew", "root", "techmademe");
							//  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
							Statement st = con.createStatement();

							int assignQuery = st.executeUpdate("INSERT INTO tb_issue(userId,itemName,status,Quantity,issuedOn) VALUES('" + userId + "','" + itemType + "','" + status + "','" + quantity + "',curtime()) ");
							Statement toHistory=con.createStatement();
							int historyInsert=toHistory.executeUpdate("INSERT INTO userHistory(userId,itemName,status,Quantity,issuedOn) VALUES('" + userId + "','" + itemType + "','" + status + "','" + quantity + "',curtime()) ");
							Statement statementStock = con.createStatement();
							int stockQuery = statementStock.executeUpdate("UPDATE tb_stock SET quantityAvailable=quantityAvailable-'" + quantity + "' WHERE Stock_ID='" + itemType + "'");
							if(assignQuery==0 && stockQuery==0 &&historyInsert==0 ){
							    response.sendRedirect("assignItems.jsp?err=1");
							}
							else {

							    response.sendRedirect("assignItems.jsp?err=4");
							}

							statementStock.close();
							st.close();
							con.close();


						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						;
					}
				}
			%>
		</div>
		</div>
</body>
<script>
    var err=Number(<%=request.getParameter("err")%>)

    if(err===1) {
        alert("Stock Not Available");
    }
    if(err===4) {

        alert("Successfully assigned"+err);

    }
</script>

</html>
<%
    //Connection conQuant=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew","root","techmademe");
							/*Statement smQuant=conQuant.createStatement();
							ResultSet rsQuant=smQuant.executeQuery("SELECT quantityAvailable,itemType FROM tb_stock WHERE itemType='"+type+"'");
								while (rsQuant.next()){
								String quantityAvailable=rsQuant.getString("quantityAvailable");

							int quant=1;
							while (quant<10){
                                */
%>
<%
    //quant++;
    //}%>