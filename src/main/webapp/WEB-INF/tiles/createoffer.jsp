
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


	<form:form method="post"
		action="${pageContext.request.contextPath}/docreate"
		modelAttribute="offer">
		 <table class="formtable">
			<tr>
				<td class="label">Name:</td>
				<td><form:input class="control" path="name" name="name"
						type="text"></form:input><br/>
			<form:errors path="name" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><form:input class="control" path="email" name="email"
						type="text"></form:input><br/>
			<form:errors path="email" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td class="label">Your offer:</td>
				<td><form:textarea class="control" path="text" name="text"
						row="10" col="10"></form:textarea><br/>
			<form:errors path="text" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create advert" type="submit"></input></td>
			</tr>


		</table>
	</form:form>