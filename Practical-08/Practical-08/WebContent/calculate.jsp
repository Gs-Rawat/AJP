<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculation</title>
</head>
<body>
    <%@ page errorPage="error.jsp" %>
    <%
     	int a = Integer.valueOf(request.getParameter("num1"));
     	int b = Integer.valueOf(request.getParameter("num2"));
     	int div = a / b;
     	out.print("Result: " + div);
     %>
</body>
</html>