<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%

InitialContext context = new InitialContext();
UserService userservice = (UserService) context.lookup("java:global/EPPROJECT/UserServiceImpl!com.klef.ep.services.UserService");

String username = request.getParameter("username");

String fullname = request.getParameter("fullname");
String email = request.getParameter("email");
String password = request.getParameter("password");

User user = new User();
user.setFullname(fullname);
user.setUsername(username);
user.setEmail(email);
user.setPassword(password);


userservice.addUser(user);
response.sendRedirect("login.html");
%>
<script>
    alert("Invalid credentials");
    window.history.back(); // Go back to the previous page
</script>
<%



%>