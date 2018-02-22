<html>
<head>
<title>Using GET Method to Read Form Data</title>
</head>
<body>
<center>
<h1>Using GET Method to Read Form Data</h1>
<ul>
<li><p><b>First Name:</b>
<%= request.getParameter("first_name")%>
</p></li>
<li><p><b>Last Name:</b>
<%= request.getParameter("last_name")%>
</p></li>
</ul>
</body>
</html>
    
String q_string=request.getParameter("Quantity");
int Quantity=Integer.parseInt('q_string);
    String sql="INSERT INTO `tb_purchase`(`Request_Date`,`Bill_No`, `Item_Name`, `Item_Details`,`Quantity`, `Price`, `Purchased_From`, `Purchase_ID`)VALUES ('2010-12-11','"+Bill_no+"','"+Item_type+"','"+Item_details+"','"+Quantity+"','"+Price_peritem+"','"+purchased_from+"','fv')";
st.executeUpdate(sql);