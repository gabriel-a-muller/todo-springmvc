<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--JSP = JavaServer Pages --%>
<%--Normally inside WEB-INF folder --%>
<%-- It is easy to write HTML here compare to java files --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yahoo!!11onze From JSP</title>
</head>
<body>
	<p><font color="red"> ${errorMessage} </font></p>
	<form action="/login.do" method="POST">
		Name: <input type="text" name="name"/> 
		Password:<input type="password" name="password"/> 
		<input type="submit" value="Login"/>
	</form>
</body>
</html>