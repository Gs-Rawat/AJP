<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factorial</title>
</head>
<body>
	<%
		int n = 10, sum = 1;
		for(int i = 1; i <= 10; i++) {
			sum *= i;
		}
		out.println("Factorial of 10:  " + sum);
	%>
</body>
</html>