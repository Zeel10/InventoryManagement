<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!--parameters from previous page -->
<%
    String firstName    =request.getParameter("Enter_fname");
    String lastName     =request.getParameter("Enter_lname");
    String Designation  =request.getParameter("select_designation");
    String Department   =request.getParameter("select_department");
    String Email        =request.getParameter("Emailinput");
    String Password     =request.getParameter("Password");
    String Id           =request.getParameter("uniqueid");
    String userType     =request.getParameter("userType");
    String fullName     =firstName+lastName;
    try {

        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("INSERT INTO tb_user VALUES(ID_No='"+Id+"',Name='"+fullName+"',Designation='"+Designation+"',Department='"+Department+"',Password='"+Password+"',E_Mail='"+Email+"',user_type='"+usertype+"')   not in  SELECT ID_NO FROM tb_user WHERE ID_No=\"adi\"");

    }

%>




