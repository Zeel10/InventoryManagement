Class .forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/inventory_db","root","aditya");
Statement st=con.createStatement();
ResultSet rs;
String sql="INSERT INTO `tb_purchase`(`Request_Date`,`Bill_No`, `Item_Name`, `Item_Details`,`Quantity`, `Price`, `Purchased_From`, `Purchase_ID`)VALUES ("2010-12-11",'"+Bill_no+"','"+Item_type+"','"+Item_details+"','"+Quantity+"','"+Price_peritem+"','"+purchased_from+"',"dlm ")";
st.executeUpdate(sql);String q = request.getParameter("Quantity");
int q_s=Integer.valueOf(q);
out.println(q_s);