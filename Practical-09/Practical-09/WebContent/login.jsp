<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
   		String uname=request.getParameter("username");
   		if(uname!=null)
	   	out.print("Welcome "+uname);
   	%>

	<form action="home.jsp" method="post">
		<p> <input type="text" name="username" placeholder="Enter the Username"> </p>
		<p> <input type="text" name="password" placeholder="Enter the Password"> </p>
		<button type="submit">Login</button>
	</form>
</body>
</html>