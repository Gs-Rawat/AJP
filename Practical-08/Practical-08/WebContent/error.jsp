<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
	<%@ page isErrorPage="true"%>
	<h2>Exception occurred</h2>
	Exception is: <%=exception%>
</body>
</html>