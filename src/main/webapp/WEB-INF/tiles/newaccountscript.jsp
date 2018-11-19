<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/static/script"></script> --%>

<script type="text/javascript">

   function onload(){
	   $("#password").keyup(checkPasswordsMatch);
	   $("#confirmpass").keyup(checkPasswordsMatch);
	   
	   $("#details").submit(onSubmit);
   }
   
   function onSubmit(){
	   var password = $("#password").val();
	   var confirmpass = $("#confirmpass").val();
	    if (password != confirmpass){
	    	alert("password do not match");
	    	return false;
	    }else{
	    	return true;
	    }
	   
   }
   
   function checkPasswordsMatch(){
	   var password = $("#password").val();
	   var confirmpass = $("#confirmpass").val();
	   
	   if(password.length > 3 || confirmpass.length >3){
	   
	   
	   if(password == confirmpass){
		   $("#match").text("<fmt:message key='MatchdePasswords.user.password'/>");
		   $("#match").addClass("vaild");
		   $("#match").removeClass("error");
	   }else{
		   $("#match").text("<fmt:message key='UnmatchedPasswords.user.password'/>");
		   $("#match").removeClass("vaild");
		   $("#match").addClass("error");
	   }
	   
	   }
   }
   
   $(document).ready(onload);
   
</script>

<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet"></link>