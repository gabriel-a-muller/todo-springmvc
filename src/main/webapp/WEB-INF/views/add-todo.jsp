<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form method="POST">
		
		<fieldset class="form-group">
			<label>Description:</label>
			<input type="text" name="desc" class="form-control"
			required="required"/>

			<label>Target Date:</label>
			<input type="date" name="targetDate" class="form-control"
			required="required"/>
		</fieldset>

			<input class="btn btn-success" type="submit" value="Add"/>
		</form>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
