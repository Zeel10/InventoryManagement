<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="User_login.jsp" />
</c:if>
 
<a href="logout.jsp">Logout 
    <c:out value="${sessionScope['loginUser']}" />
</a>