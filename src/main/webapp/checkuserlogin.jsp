<%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
UserService userService = (UserService) context.lookup("java:global/EPPROJECT/UserServiceImpl!com.klef.ep.services.UserService");

String username = request.getParameter("username");
String password = request.getParameter("password");

User user = userService.UserLogin(username, password);

if(user!=null)
{   
	  //session is an implicit object
	   session.setAttribute("username", username);  // username is a session variable
	   response.sendRedirect("cart.jsp"); // will redirect to admin home
}
else
{
	%>
	  <script>
	  alert("Invalid username or password. Please try again.");
	  </script>
	  <%
}



%>