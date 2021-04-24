<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
Welcome ${name}. <BR/>

Now you can <a href="/list-todos?name=${name}">manage your todos</a>
</body>
</html>

<!--  Valid User -> welcome.jsp -->
<!--  Invalid User -> login.jsp -->