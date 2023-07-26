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
        
        //admin
        @import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

*, *:before, *:after {
  box-sizing: border-box;
}

body {
  min-height: 100vh;
  font-family: 'Raleway', sans-serif;
}

.sign-in-container {
  position: absolute;
  width: 100%;
  height: 100%;
  overflow: hidden;

  &:hover, &:active {
    .sign-in-top, .sign-in-bottom {
      &:before, &:after {
        margin-left: 200px;
        transform-origin: -200px 50%;
        transition-delay: 0s;
      }
    }

    .sign-in-center {
      opacity: 1;
      transition-delay: 0.2s;
    }
  }
}

.sign-in-top, .sign-in-bottom {
  &:before, &:after {
    content: '';
    display: block;
    position: absolute;
    width: 200vmax;
    height: 200vmax;
    top: 50%;
    left: 50%;
    margin-top: -100vmax;
    transform-origin: 0 50%;
    transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
    z-index: 10;
    opacity: 0.65;
    transition-delay: 0.2s;
  }
}

.sign-in-top {
  &:before {
    transform: rotate(45deg);
    background: #e46569;
  }

  &:after {
    transform: rotate(135deg);
    background: #ecaf81;
  }
}

.sign-in-bottom {
  &:before {
    transform: rotate(-45deg);
    background: #60b8d4;
  }

  &:after {
    transform: rotate(-135deg);
    background: #3745b5;
  }
}

.sign-in-center {
  position: absolute;
  width: 400px;
  height: 400px;
  top: 50%;
  left: 50%;
  margin-left: -200px;
  margin-top: -200px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 30px;
  opacity: 0;
  transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
  transition-delay: 0s;
  color: #333;

  input {
    width: 100%;
    padding: 15px;
    margin: 5px;
    border-radius: 1px;
    border: 1px solid #ccc;
    font-family: inherit;
  }
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
					
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
    </nav>
</section>
<!-- /#header -->

<body>
<form method="post"   action="checkadminlogin.jsp"> 
    <div class="sign-in-container" onclick>
  <div class="sign-in-top"></div>
  <div class="sign-in-bottom"></div>
  <div class="sign-in-center">
    <h2>Admin Login</h2>
    <input type="text" placeholder="username" name="uname" required/>
    <input type="password" placeholder="password" name="pwd" required />
    <button type="submit" value="Login" required>Login</button>
    <h2>&nbsp;</h2>
  </div>
</div>



</body>

</html>
