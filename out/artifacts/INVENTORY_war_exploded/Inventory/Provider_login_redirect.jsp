
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
    prefix="c"%>

    <c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="Provider_login.jsp" />
</c:if>
 
<a href="logout.jsp">Logout 
    <c:out value="${sessionScope['loginUser']}" />
</a>