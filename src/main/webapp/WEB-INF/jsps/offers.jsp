<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet"></link>
<title>current offers</title>
</head>
<body>
<table class="offers">
    <tr><th>name</th><th>email</th><th>offer</th></tr>
	<c:forEach var="offer" items="${offers}">
    <tr> 
     <td>  <p><c:out value="${offer.name}"></c:out></p> </td>
     <td>  <p><c:out value="${offer.email}"></c:out></p> </td>
     <td>  <p><c:out value="${offer.text}"></c:out></p> </td>
	</tr>
	</c:forEach>
    
</table>

</body>
</html>