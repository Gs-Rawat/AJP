<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<%
		String uname = request.getParameter("username");
		out.print("Welcome " + uname);
		session.setAttribute("session", uname);
	%>
	<h3> <a href="logout.jsp">Home Page</a> </h3>
</body>
</html>