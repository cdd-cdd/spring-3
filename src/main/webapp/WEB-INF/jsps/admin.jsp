<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet"></link>
<title>Insert title here</title>
</head>
<body>
<h3>Authorised Users only</h3>
<table class="offers">
    <tr><th>Username</th><th>Email</th><th>Role</th><th>Enabled</th></tr>
	<c:forEach var="user" items="${users}">
    <tr> 
     <td>  <p><c:out value="${user.username}"></c:out></p> </td>
     <td>  <p><c:out value="${user.email}"></c:out></p> </td>
     <td>  <p><c:out value="${user.authority}"></c:out></p> </td>
	 <td>  <p><c:out value="${user.enabled}"></c:out></p> </td>
	</tr>
	</c:forEach>
    
</table>

</body>
</html>