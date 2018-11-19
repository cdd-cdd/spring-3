<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet"></link>
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/static/script"></script> --%>
<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>

 <tiles:insertAttribute name="includes"></tiles:insertAttribute>
</head>
<body>


  <div class="header">
    <tiles:insertAttribute name="header"></tiles:insertAttribute>
  </div>
  <div class="content">
    <tiles:insertAttribute name="content"></tiles:insertAttribute>
  </div>
  
  
  <hr/>

  <div class="footer">
    <tiles:insertAttribute name="footer"></tiles:insertAttribute>
  </div>

   

</body>
</html>