<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
	<%
		String name = (String) session.getAttribute("session");
		out.print("Hello User, you have entered the name: " + name);
		session.invalidate();
	%>
	<h3> <a href="login.jsp">Logout</a> </h3>
</body>
</html>