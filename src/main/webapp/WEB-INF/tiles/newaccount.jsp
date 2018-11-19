<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h2>create new account</h2>
 <form:form id="details" method="post" action="${pageContext.request.contextPath}/createaccount" modelAttribute="user">
   <table>
     <tr><td class="label">Username:</td><td><form:input class="control" path="username" name="username" type="text"/>
     <br/><div class="error">
			<form:errors path="username"></form:errors></div></td></tr>
     <tr><td class="label">Email:</td><td><form:input class="control" path="email" name="email" type="text"/>
     <br/><div class="error">
			<form:errors path="email"></form:errors></div></td></tr>
     <tr><td class="label">Password:</td><td><form:input id="password" class="control" path="password" name="password" type="text"/>
     <br/><div class="error">
			<form:errors path="password"></form:errors></div></td></tr>
     <tr><td class="label">Confirm password:</td><td><input id="confirmpass" class="control" name="confirmpass" type="text"/><div id="match"></div></td></tr>
     <tr><td class="label"></td><td><input class="control" name="Create account" type="submit"/></td></tr>
     
   </table>

 </form:form>
