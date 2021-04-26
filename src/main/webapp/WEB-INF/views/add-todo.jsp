<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Todo</title>
</head>
<body>
	<p><font color="red">Insert To-Do information:</font></p>
	<form method="POST">
		Description: <input type="text" name="desc"/> 
		Target Date:<input type="date" name="targetDate"/> 
		<input type="submit" value="Finish"/>
	</form>
</body>
</html>
