<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>


<%
String purchased_from=request.getParameter("purchased_from");
String Bill_no=request.getParameter("Bill_no");
String Item_details=request.getParameter("Item_details");
String Item_type=request.getParameter("stockType");
String Price_peritem=request.getParameter("Price_peritem");
String q=request.getParameter("Quantity");
int qu=Integer.parseInt(q);
String status="Available";
try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/inventory_db_renew", "root", "techmademe");
	Statement st = con.createStatement();
	String sql = "INSERT INTO tb_purchase(`Bill_No`, `Item_Details`,`Quantity`, `Price`, `Purchased_From`,`item_type`)VALUES ('" + Bill_no + "','" + Item_details + "','" + qu + "','" + Price_peritem + "','" + purchased_from + "','" + Item_type + "')";
	int sqlSuccess = st.executeUpdate(sql);
	Statement st2=con.createStatement();
	ResultSet rs=st2.executeQuery("Select itemType from tb_stock where itemType='"+Item_type+"'");
	if(rs.first())
    {
        Statement st3=con.createStatement();
        int third=st3.executeUpdate("UPDATE tb_stock SET quantityAvailable=quantityAvailable+'"+qu+"' WHERE itemType='"+Item_type+"'");

    }
    else
    {
        Statement st4=con.createStatement();
        int fourth=st4.executeUpdate("INSERT INTO tb_stock VALUES('"+Item_type+"','"+Item_details+"','"+Item_details+"','"+status+"','"+qu+"','"+Item_type+"') ");
    }



	if (sqlSuccess == 1) {
		response.sendRedirect("Add_new_items.jsp?error=0");

	} else {
		response.sendRedirect("Add_new_items.jsp?error=1");
	}
	st.close();
	con.close();
}catch(ClassNotFoundException e) {
	e.printStackTrace();}
%>