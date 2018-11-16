<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hello world <br />

	<%--   Request (Using EL): ${name} </p>
  <c:out value="${name}"></c:out>  <p/>
  
  <sql:query var="rs" dataSource="jdbc/Spring">
select * from offers
</sql:query>

<c:forEach var="row" items="${rs.rows}">
    id ${row.id}<br/>
    name ${row.name}<br/>
    email ${row.email}<br/>
    text ${row.text}<br/>
</c:forEach> --%>
  <p><a href="${pageContext.request.contextPath}/offers">Show current offers</a></p>
  <p><a href="${pageContext.request.contextPath}/createoffer">Add a new offer</a></p>


</body>
</html>