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
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="en-US">
<!--<![endif]-->
	<head>
		<!-- meta -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
		<title>S I G H T</title>
		<style>
			@media (max-width: 767.98px) { .border-sm-start-none { border-left: none !important; } }
		</style>
		<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"> -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/ionicons.min.css">
		<link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.theme.css">
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/section.css">
	    <link rel="stylesheet" href="assets/css/portfolio.css">
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

			<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
	</head>

<style>
@import url('https://fonts.googleapis.com/css?family=Muli:400,400i,700,700i');
body{
  font-family: 'Muli', sans-serif;
  background:#ddd;
}
.shell{
  padding:80px 0;
}
.wsk-cp-product{
  background:#fff;
  padding:15px;
  border-radius:6px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  position:relative;
  margin:20px auto;
}
.wsk-cp-img{
  position:absolute;
  top:5px;
  left:50%;
  transform:translate(-50%);
  -webkit-transform:translate(-50%);
  -ms-transform:translate(-50%);
  -moz-transform:translate(-50%);
  -o-transform:translate(-50%);
  -khtml-transform:translate(-50%);
  width: 100%;
  padding: 15px;
  transition: all 0.2s ease-in-out;
}
.wsk-cp-img img{
  width:100%;
  transition: all 0.2s ease-in-out;
  border-radius:6px;
}
.wsk-cp-product:hover .wsk-cp-img{
  top:-40px;
}
.wsk-cp-product:hover .wsk-cp-img img{
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
}
.wsk-cp-text{
  padding-top:150%;
}
.wsk-cp-text .category{
  text-align:center;
  font-size:12px;
  font-weight:bold;
  padding:5px;
  margin-bottom:45px;
  position:relative;
  transition: all 0.2s ease-in-out;
}
.wsk-cp-text .category > *{
  position:absolute;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  -webkit-transform: translate(-50%,-50%);
  -moz-transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
  -o-transform: translate(-50%,-50%);
  -khtml-transform: translate(-50%,-50%);
    
}
.wsk-cp-text .category > span{
  padding: 12px 30px;
  border: 1px solid #313131;
  background:#212121;
  color:#fff;
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
  border-radius:27px;
  transition: all 0.05s ease-in-out;
  
}
.wsk-cp-product:hover .wsk-cp-text .category > span{
  border-color:#ddd;
  box-shadow: none;
  padding: 11px 28px;
}
.wsk-cp-product:hover .wsk-cp-text .category{
  margin-top: 0px;
}
.wsk-cp-text .title-product{
  text-align:center;
}
.wsk-cp-text .title-product h3{
  font-size:20px;
  font-weight:bold;
  margin:15px auto;
  overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  width:100%;
}
.wsk-cp-text .description-prod p{
  margin:0;
}
/* Truncate */
.wsk-cp-text .description-prod {
  text-align:center;
  width: 100%;
  height:62px;
  overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
  margin-bottom:15px;
}
.card-footer{
  padding: 25px 0 5px;
  border-top: 1px solid #ddd;
}
.card-footer:after, .card-footer:before{
  content:'';
  display:table;
}
.card-footer:after{
  clear:both;
}

.card-footer .wcf-left{
  float:left;
  
}

.card-footer .wcf-right{
  float:right;
}

.price{
  font-size:18px;
  font-weight:bold;
}

a.buy-btn{
  display:block;
  color:#212121;
  text-align:center;
  font-size: 18px;
  width:35px;
  height:35px;
  line-height:35px;
  border-radius:50%;
  border:1px solid #212121;
  transition: all 0.2s ease-in-out;
}
a.buy-btn:hover , a.buy-btn:active, a.buy-btn:focus{
  border-color: #FF9800;
  background: #FF9800;
  color: #fff;
  text-decoration:none;
}
.wsk-btn{
  display:inline-block;
  color:#212121;
  text-align:center;
  font-size: 18px;
  transition: all 0.2s ease-in-out;
  border-color: #FF9800;
  background: #FF9800;
  padding:12px 30px;
  border-radius:27px;
  margin: 0 5px;
}
.wsk-btn:hover, .wsk-btn:focus, .wsk-btn:active{
  text-decoration:none;
  color:#fff;
}  
.red{
  color:#F44336;
  font-size:22px;
  display:inline-block;
  margin: 0 5px;
}
@media screen and (max-width: 991px) {
  .wsk-cp-product{
    margin:40px auto;
  }
  .wsk-cp-product .wsk-cp-img{
  top:-40px;
}
.wsk-cp-product .wsk-cp-img img{
  box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
}
  .wsk-cp-product .wsk-cp-text .category > span{
  border-color:#ddd;
  box-shadow: none;
  padding: 11px 28px;
}
.wsk-cp-product .wsk-cp-text .category{
  margin-top: 0px;
}
a.buy-btn{
  border-color: #FF9800;
  background: #FF9800;
  color: #fff;
}
}
.navbar-nav > li {
  margin-right: 15px;
}

.welcome-user {
  margin-top: 8px; /* Adjust this value as needed */
}
</style>
<body>
<!-- Home -->
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
							<li><a href="wooden.html">Wooden Handicrafts</a></li>
							<li><a href="marble.html">Marble Handicrafts</a></li>
							<li><a href="Iron.html">Iron Handicrafts</a></li>
							<li><a href="Brass.html">Brass Handicrafts</a></li>
							<li><a href="metal.html">Metal Handicrafts</a></li>
							<!-- Add more craft categories as needed -->
						</ul>
					</li>
					<li><a href="contact.html">contact</a></li>
					<li><a href="userlogout.jsp">Logout</a></li>
					<li class="welcome-user">Welcome <%=username%></li>
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
		</nav>
	</section> <!-- /#header -->


<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index-multipage.html">Home</a></li>
				<li class="active">&nbsp;wooden handicrafts</li>
			</ol>
		</div> <!-- /.container -->
	</section> <!-- /.section-background -->


<!-- Portfolio -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<div class="container text-center">
	<h1>Marble Handicrafts</h1>
	</div>
	
	
	<div class="shell">
	  <div class="container">
		<div class="row">
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img">
				<img src="assets/images/my/h1.jpg" alt="Product" class="img-responsive" />
			  </div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.672/-</span>
				</div>
				<div class="title-product">
				  <h3>Marble Stand clock
                </h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h2.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.567/-</span>
				</div>
				<div class="title-product">
				  <h3>The wedding Elephant</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h3.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.367/-</span>
				</div>
				<div class="title-product">
				  <h3>The Jug</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h4.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.867/-</span>
				</div>
				<div class="title-product">
				  <h3>The White Lion</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
		<div class="row">
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img">
				<img src="assets/images/my/h5.jpg" alt="Product" class="img-responsive" />
			  </div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.1203/-</span>
				</div>
				<div class="title-product">
				  <h3>The Tok Marble</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h6.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.767/-</span>
				</div>
				<div class="title-product">
				  <h3>Designer Marble</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h7.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.798/-</span>
				</div>
				<div class="title-product">
				  <h3>The Long Jug</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  
		  <div class="col-md-3">
			<div class="wsk-cp-product">
			  <div class="wsk-cp-img"><img src="assets/images/my/h8.jpg" alt="Product" class="img-responsive" /></div>
			  <div class="wsk-cp-text">
				<div class="category">
				  <span>Rs.717/-</span>
				</div>
				<div class="title-product">
				  <h3>
                    The Idle of God</h3>
				</div>
				
				<div class="card-footer">
					<div class="wcf-left"><span class="price">Add to Cart</span></div>
					<div class="wcf-right"><a href="#" class="buy-btn"><img src="assets/images/carticon.png" alt="Add to Cart"></a></div>
				</div>
			  </div>
			</div>
		  </div>
		  
		</div>
	  </div>
	</div>

	<!-- portfolio -->


<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="copy">
					Copyright &copy; 2023 Artisanal India
				</div>
			</div>
			<div class="col-sm-4 text-center">
				<div class="social-icon">
					<a href="#">
						<div class="icon fb">
							<i class="ion-social-facebook"></i>
						</div>
					</a>
					<a href="#">
						<div class="icon twitter">
							<i class="ion-social-twitter"></i>
						</div>
					</a>
					<a href="#">
						<div class="icon google">
							<i class="ion-social-googleplus"></i>
						</div>
					</a>
					<a href="#">
						<div class="icon rss">
							<i class="ion-social-rss"></i>
						</div>
					</a>
				</div>		
			</div>
			<div class="col-sm-4 text-right">
				<div class="copy">
					All Rights Reserved
				</div>
			</div>
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</footer>
	


	<script src="assets/js/jquery-1.11.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/contact.js"></script>
	<!-- // <script src="assets/js/smoothscroll.js"></script> -->
	<script src="assets/js/script.js"></script>


</body>
</html>