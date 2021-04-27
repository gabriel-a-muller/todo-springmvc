<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Todo</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
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
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
