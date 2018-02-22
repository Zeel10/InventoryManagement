<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
     <head>
    <title>Authentication</title>
     </head>
    <body>
   <c:if test="${ empty param.inputEmail or empty param.inputPassword}">
        <c:redirect url="User_login.jsp">
    <c:param name="errMsg" value="Please Enter Username 
                and Password"/>
        </c:redirect>
        </c:if>
       
        <c:if test="${not empty param.inputEmail and not empty param.inputPassword}">
        <s:setDataSource var="ds"
                         driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost/exmp"
                         user="root"
                         password="aditya"/>
             <s:query dataSource="${ds}" var="selectQ">
        SELECT count(*) as kount from login_practice
        where username='${param.inputEmail}'
        and password='${param.inputPassword}'
      </s:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                value="${param.inputEmail}"/>
            <c:redirect url="../User/User_loggedin.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="User_login.jsp" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
        </c:if>
    </body>
    </html>    