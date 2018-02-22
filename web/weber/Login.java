import java.*;
public class Login extends HttpServlet{
    protected void doGet(HttpServletRequest request,HttpServleResponse response)throws
    {
      String uname=request.getParameter("inputEmail");
      String pass=request.getParameter("pass");
      Class.forName("com.mysql.jdbc.Driver");
      com.mysql.jdbc.Connection connection=(Connection) DriverManager.getCon
      if (uname.equals(""))
    }
}