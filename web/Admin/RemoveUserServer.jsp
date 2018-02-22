<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/6/17
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>

<%

String delid=request.getParameter("delid");
int slice=delid.indexOf("-");
String delString=delid.substring(0,slice);
String sessionUser=request.getParameter("userid");

try {

      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/inventory_db_renew";
      Connection con = (Connection) DriverManager.getConnection(url, "root", "techmademe");
      PreparedStatement ps = con.prepareStatement("DELETE FROM tb_user WHERE ID_No=?");

    //  PreparedStatement select=con.prepareStatement("SELECT * FROM  tb_user WHERE ID_No=?");

   // Statement statement=con.createStatement();
   // ResultSet resultSet=statement.executeQuery("SELECT * FROM tb_user WHERE ID_No!);

    ps.setString(1, delString);
      int r = ps.executeUpdate();
      if (r == 1) {
          String redirectURL = "RemoveUser.jsp?error=0";//user="//+delString
          response.sendRedirect(redirectURL);
      }
      else{
          String redirectURL = "RemoveUser.jsp?error=1";
          response.sendRedirect(redirectURL);
      }


}catch (Exception e)
{
out.println(e.getMessage());
}
%>
