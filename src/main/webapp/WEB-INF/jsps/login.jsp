<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Please sign in</title>
  </head>
  <body>

      <form method="post" action="${pageContext.request.contextPath}/login">
        <h2 >What's wrong</h2>
        <p>
          <label for="username">Username</label>
          <input type="text" id="username" name="username" placeholder="Username" >
        </p>
        <p>
          <label for="password" >Password</label>
          <input type="password" id="password" name="password" placeholder="Password" >
        </p>

        <button  type="submit">Sign in</button>
      </form>
</body></html>