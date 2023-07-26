<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.User" %>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html class="noIE" lang="en-US">

<head>
    <!-- meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>ARTISANAL INDIA</title>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.theme.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/section.css">
    <link rel="stylesheet" href="assets/css/portfolio.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: lavender;
            background-size: cover;
            background-position: center;
        }

        .navbar {
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8);
        }

        .navbar .navbar-brand {
            color: #e74c3c;
        }

        .navbar .navbar-nav > li > a {
            color: #333;
        }

        .navbar .navbar-nav > li > a:hover,
        .navbar .navbar-nav > li > a:focus {
            color: #e74c3c;
        }

        .navbar-toggle {
            border-color: #e74c3c;
        }

        .navbar-toggle .icon-bar {
            background-color: #e74c3c;
        }

        .navbar-collapse {
            border-color: #e74c3c;
            background-color: rgba(255, 255, 255, 0.8);
        }

        .navbar-collapse ul.navbar-nav > li > a {
            color: #333;
        }

        .navbar-collapse ul.navbar-nav > li > a:hover,
        .navbar-collapse ul.navbar-nav > li > a:focus {
            color: #e74c3c;
        }

        .login-container {
            max-width: 500px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .login-container h1 {
            text-align: center;
            color: #e74c3c;
            margin-bottom: 30px;
        }

        .login-container .form-group {
            margin-bottom: 20px;
        }

        .login-container .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .login-container .form-group input[type="text"],
        .login-container .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-container .form-group button {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-container .form-group button:hover {
            background-color: #c0392b;
        }

        .login-container .text-center {
            text-align: center;
        }

        .login-container .link {
            color: #e74c3c;
            text-decoration: none;
        }

        .login-container .link:hover {
            text-decoration: underline;
        }
        .navbar-right {
  display: flex;
  align-items: center;
}

.navbar-nav > li {
  margin-right: 15px;
}

.welcome-user {
  margin-top: 1px; /* Adjust this value as needed */
}
        
    </style>
</head>

<section class="portfolio-header" id="header">

    <nav class="navbar navbar-default _navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index-multipage.html">ARTISANAL INDIA</a>
            </div>
            <!-- /.navbar-header -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					
					<!-- <li><a href="service.html">services</a></li> -->
					<li><a href="adminhome.jsp">Home</a></li>
					<li><a href="viewallusers.jsp">View All Users</a></li>
					
					<li><a href="adminlogout.jsp">Logout</a></li>
					<li class="welcome-user">Welcome <%=username%></li>
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
    </nav>
</section>

<body>
    <h1>Welcome to the Admin Dashboard</h1>
    <p>
        This is the admin dashboard for your webpage about tribal handicrafts. Here, you can manage the content, products,
        and user data related to the tribal handicrafts website.
    </p>
    <p>
        As an admin, you have access to the following features:
    </p>
    <ul>
        <li>Add, edit, and delete products</li>
        <li>Manage user accounts and permissions</li>
        <li>View website statistics and analytics</li>
        <!-- Add any other admin features here -->
    </ul>
    <p>
        Feel free to explore and manage the website's content to provide the best experience for your users interested in
        tribal handicrafts.
    </p>
</body>
</html>
