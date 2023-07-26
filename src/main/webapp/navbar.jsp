<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.User" %>
<%
String username = (String) session.getAttribute("username");
if (username == null) {
    response.sendRedirect("asessionexpiry.html");
}
%>
<!-- The entire navigation bar code from wooden.jsp goes here -->
<!-- ... -->
<style>
body {
  font-family: 'Muli', sans-serif;
  background: #ddd;
}

.navbar {
  background: #fff;
  border-bottom: 1px solid #ddd;
  margin-bottom: 0;
  border-radius: 0;
}

.navbar .navbar-brand {
  font-size: 24px;
  font-weight: bold;
  color: #212121;
}

.navbar-nav > li {
  margin-right: 15px;
}

.welcome-user {
  margin-top: 8px; /* Adjust this value as needed */
}

</style>
<section class="portfolio-header" id="header">
		
		<nav class="navbar navbar-default _navbar-fixed-top">
			<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index-multipage.html">ARTISANAL INDIA</a>
				</div> <!-- /.navbar-header -->

		    <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="index-multipage.html">home</a></li>
					<!-- <li><a href="service.html">services</a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Crafts <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="wooden.jsp">Wooden Handicrafts</a></li>
							<li><a href="marble.jsp">Marble Handicrafts</a></li>
							<li><a href="Iron.html">Iron Handicrafts</a></li>
							<li><a href="Brass.html">Brass Handicrafts</a></li>
							<li><a href="metal.html">Metal Handicrafts</a></li>
							<!-- Add more craft categories as needed -->
						</ul>
					</li>
					<li><a href="contact.html">contact</a></li>
					<li><a href="userlogout.jsp">Logout</a></li>
					<li class="welcome-user" style="color: #e74c3c;">Welcome <%=username%></li>
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
		</nav>
	</section> <!-- /#header -->