<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Form Page</title>
</head>
<body>
    <%-- Your form content --%>
    <form method="post">
        <!-- Form fields -->
        <input type="text" name="username" />
        <input type="password" name="password" />
        <!-- Submit button -->
        <button type="submit">Submit</button>
    </form>

    <%-- Handle form submission --%>
    <% String username = request.getParameter("username");
       String password = request.getParameter("password");
       if (username != null && password != null) {
           // Process the form data here
           // ...
           // Optionally, redirect to a success page
           // response.sendRedirect("success.jsp");
       }
    %>
</body>
</html>