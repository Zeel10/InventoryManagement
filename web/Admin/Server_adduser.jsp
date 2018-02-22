<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>


<head>
    <title>Authentication</title>
</head>
<body>

    <%
                String Enter_fname = request.getParameter("Enter_fname");
                String Enter_lname = request.getParameter("Enter_lname");
                String select_designation = request.getParameter("select_designation");
                String select_department = request.getParameter("select_department");
                String uniqueid = request.getParameter("uniqueid");
                String userType = request.getParameter("userType");
                String Emailinput = request.getParameter("Emailinput");
                String Password = request.getParameter("Password");
try {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=null;
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
  //  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
    Statement st = con.createStatement();
    int sqlUpdate = st.executeUpdate("INSERT INTO tb_user VALUES('"+uniqueid+"','"+Enter_fname+Enter_lname+"','"+select_designation+"','"+select_department+"','"+Password+"','"+Emailinput+"','"+userType+"',curtime() )");
if (sqlUpdate==0){
response.sendRedirect("error404.jsp");
}
else {
    response.sendRedirect("Add_new_user.jsp");
}
    st.close();
con.close();


}catch(ClassNotFoundException e) {
           e.printStackTrace();
       };
            %>



