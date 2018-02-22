<%@ page contentType="text/html; charset=utf-8" language="java" import="java.*" errorPage="" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>


<head>
    <title>Authentication</title>
     </head>
    <body>

            <%
                String Email = request.getParameter("inputEmail");
                String password = request.getParameter("inputPassword");
try {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=null;
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
  //  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_db_renew","root", "techmademe");
    Statement st = con.createStatement();
   ResultSet rs;
   rs = st.executeQuery("select * from tb_user where E_Mail='" + Email + "' and Password='" + password + "'");

    if (rs.next()) {
        session.setAttribute("userid", rs.getString("ID_No"));
        session.setAttribute("type", rs.getString("user_type"));
        String type = rs.getString("user_type");
        if ("Admin".equals(type)) {
            response.sendRedirect("../Admin/adminHomePage.jsp");
        } else if ("Provider".equals(type)) {
            response.sendRedirect("../Provider/Add_new_items.jsp");
        } else if ("User".equals(type)) {
            response.sendRedirect("../User/User_loggedin.jsp");
        }
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");


    }else
        {response.sendRedirect( "Login_Page.jsp?error=1" );

        }
    // response.sendRedirect("Loggedin.jsp");
rs.close();
st.close();
con.close();


}catch(ClassNotFoundException e) {
           e.printStackTrace();
       };
            %>
