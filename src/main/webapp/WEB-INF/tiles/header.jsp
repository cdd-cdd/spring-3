<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

   <a class="title" href="<c:url value='/'/>">Offers</a>
   <sec:authorize access="!isAuthenticated()">
    <p><a class="login" href="<c:url value='/login'/>">Log in</a></p>  
  </sec:authorize>
  <sec:authorize access="isAuthenticated()">
    <p><a class="login" href="<c:url value='/logout'/>">Log out</a></p>  
  </sec:authorize>