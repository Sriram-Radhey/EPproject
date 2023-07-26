<!DOCTYPE html>
<html class="noIE" lang="en-US">

<head>
    <!-- meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
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
            background-image: url("assets/images/bg.png");
            background-size: cover;
            background-position: center;
        }

        .navbar {
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
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
            background-color: rgba(255, 255, 255, 0.9);
        }

        .navbar-collapse ul.navbar-nav > li > a {
            color: #333;
        }

        .navbar-collapse ul.navbar-nav > li > a:hover,
        .navbar-collapse ul.navbar-nav > li > a:focus {
            color: #e74c3c;
        }

        .reg-container {
            max-width: 500px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .reg-container h1 {
            text-align: center;
            color: #e74c3c;
            margin-bottom: 30px;
        }

        .reg-container .form-group {
            margin-bottom: 20px;
        }

        .reg-container .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .reg-container .form-group input[type="text"],
        .reg-container .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .reg-container .form-group button {
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

        .reg-container .form-group button:hover {
            background-color: #c0392b;
        }

        .reg-container .text-center {
            text-align: center;
        }

        .reg-container .link {
            color: #e74c3c;
            text-decoration: none;
        }

        .reg-container .link:hover {
            text-decoration: underline;
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
					<li class="active"><a href="index-multipage.html">home</a></li>
					<!-- <li><a href="service.html">services</a></li> -->
					<li><a href="login.html">Login</a></li>
					<li><a href="contact.html">contact</a></li>
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
    </nav>
</section>
<!-- /#header -->
<body>
<form method="post"  action="adduser.jsp">
    <div class="reg-container">
        <h1>Register</h1>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit" value="Register">Register</button>
            </div>
        </form>
        <p class="text-center">Already have an account? <a href="login.html" class="link">Login</a></p>
    </div>
</body>

</html>
