<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<H1>Add a To-Do</H1>
	<form:form method="POST" commandName="todo">
	
	<fieldset class="form-group">

		<form:hidden path="id"/>

		<form:label path="desc">Description:</form:label>
		<form:input type="text" path="desc" class="form-control"
		required="required"/>
		<form:errors path="desc" cssClass="text-warning"/>
		<BR/>

		<form:label path="targetDate">Target Date:</form:label>
		<form:input type="date" path="targetDate" class="form-control"
		required="required"/>
		<form:errors path="targetDate" cssClass="text-warning"/>
		<BR/>

	</fieldset>

		<input class="btn btn-success" type="submit" value="Submit"/>
	</form:form>
</div>
<%@ include file="common/footer.jspf" %>