<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
    prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="Admin_login.jsp"></c:redirect>
    </c:if>
    <a href="../Inventory/logout.jsp">
    <c:out value="${sessionScope['loginUser']}"/>
    </a>