<%@page import="com.klef.ep.services.UserService"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@page import="com.klef.ep.models.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");

String username = request.getParameter("username");

adminService.deleteUser(username);

response.sendRedirect("viewallusers.jsp");


%>