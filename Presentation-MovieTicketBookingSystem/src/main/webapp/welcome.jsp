<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String email = (String)session.getAttribute("email"); %>
<h2>Login Successfully <% out.println(email); %></h2>
<a href="logout.jsp">Logout</a>
</body>
</html>