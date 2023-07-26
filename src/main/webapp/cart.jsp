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
<html>

<head>
    <title>Shoping Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">

    <!-- Primary Meta Tags -->
<title>CBIKES - shopping cart (Konstantyn Huzenko)</title>
<meta name="title" content="CBIKES - shopping cart (Konstantyn Huzenko)">
<meta name="description" content="My shopping cart development. Konstantyn Huzenko - Frontend Developer.">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://metatags.io/">
<meta property="og:title" content="CBIKES - shopping cart (Konstantyn Huzenko)">
<meta property="og:description" content="My shopping cart development. Konstantyn Huzenko - Frontend Developer.">
<meta property="og:image" content="i/cbikes-01.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://metatags.io/">
<meta property="twitter:title" content="CBIKES - shopping cart (Konstantyn Huzenko)">
<meta property="twitter:description" content="My shopping cart development. Konstantyn Huzenko - Frontend Developer.">
<meta property="twitter:image" content="i/cbikes-01.jpg">
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
<style>
@import url("https://fonts.googleapis.com/css?family=Ubuntu:400,500");
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  font-size: 1rem;
}

::-webkit-scrollbar {
  display: none;

  width: 0;
}

body {
  background-color: #e5ebed;

  font-family: "Ubuntu", sans-serif;
  font-size: 1rem;
}

h1,
h2,
h3 {
  font-weight: 500;
}

.container {
  max-width: 1200px;
  margin: auto;
  padding: 0 2rem;
}

/* Header ================================================================================ */
.header {
  margin-bottom: 1rem;
}

.header__item {
  margin: 10px 0;

  font-weight: 900;
}

/* Products ================================================================================ */
.products-box {
  display: grid;

  grid-template-columns: repeat(auto-fit, minmax(14rem, 1fr));
  grid-column-gap: 2.5rem;
  grid-row-gap: 2.5rem;
}

.product-box__item {
  z-index: 10;

  display: flex;
  flex-direction: column;

  padding: 1rem;

  border-radius: 1rem;
  background: #fff;
}

.product-box__item.animation {
  position: relative;
  animation: product-box__item--fall;
  animation-duration: 1s;
}

@keyframes product-box__item--fall {
  0% {
    /* transform: translateY(0px); */
    bottom: 0px;
    z-index: 1000;
  }
  50% {
    /* transform: translateY(210%); */
    bottom: -210%;
    transform: scale(.3);
    opacity: .1;
  }
  51% {
    /* transform: translateY(-110%); */
    bottom: 110%;
  }
  100% {
    /* transform: translateY(0px); */
    bottom: 0px;
  }
}

.product-box__title {
  margin-bottom: 1rem;

  text-align: center;
}

.product-box__img {
  overflow: hidden;

  margin-top: auto;
  margin-bottom: 1rem;
}

.img-fluid {
  max-width: 100%;
}

.product-box__img:hover .img-fluid {
  animation-name: bike;
  animation-duration: 1.3s;
}

@keyframes bike {
  0% {
    transform: translateX(0px);
  }
  50% {
    transform: translateX(110%);
  }
  51% {
    transform: translateX(-110%);
  }
  100% {
    transform: translateX(0px);
  }
}

.product-box__meta {
  position: relative;
}

.product-box__btn {
  position: absolute;
  right: -37px;
  bottom: -37px;

  width: 50px;
  height: 50px;

  transition: 0.2s linear;

  border: 0;
  border-radius: 50px;
  background: #ffffff;

  font-size: 1.7rem;
  font-weight: 900;
}

.product-box__btn:hover {
  cursor: pointer;

  color: #e5ebed;
  background: #000000;
}

.product-box__btn::before {
  position: absolute;
  z-index: -1;
  top: calc(50% - 65px / 2);
  left: calc(50% - 65px / 2);

  width: 65px;
  height: 65px;

  content: "";

  border-radius: 50px;
  background: #e5ebed;
}

.product-box__btn:focus,
.product-box__btn--delete {
  outline: none;
}

/* Cart ================================================================================ */
.top-cart {
  position: fixed;
  z-index: 100;
  bottom: -100px;
  left: 0;

  width: 100%;
  padding: 0.5rem;

  transition: 0.2s linear;

  background: white;
}

.top-cart__info {
  display: flex;
}

.top-cart-info__goods {
  display: flex;
  overflow-x: scroll;

  width: 100%;
  height: 93.33px;
}
.top-cart-info__goods::-webkit-scrollbar {
  display: none;

  width: 0;
}
.top-cart-info__goods {
  overflow: -moz-scrollbars-none;

  -ms-overflow-style: none;
}

.product-box__item--small {
  position: relative;

  display: grid;

  margin: 0.25rem 1rem 0 0;
  padding: 0.5rem;

  border-radius: 10px;
  background: #e5ebed;

  grid-template-columns: 1fr 1fr 70px;
  grid-template-rows: 0.3fr 1fr;
  gap: 5px 15px;
  grid-template-areas:
    "title title title"
    "img img price";

  animation: product-box__item--move;
  animation-duration: 1s;
}
@keyframes product-box__item--move {
  0% {
    left: 50%;
    z-index: 1000;
    transform: scale(.1);
    opacity: .1;
  }
  100% {
    left: 0%;
    z-index: 1000;
    transform: scale(1);
    opacity: 1;
  }
}

.product-box__item--small.delete {
  animation: product-box__item--delete;
  animation-duration: 1s;
}
@keyframes product-box__item--delete {
  0% {
    left: 0%;
    z-index: 1000;
    transform: scale(1);
    opacity: 1;
  }
  100% {
    left: 50%;
    z-index: 1000;
    transform: scale(.3);
    opacity: .1;
  }
}

.product-box__item--small > .product-box__img {
  display: flex;
  align-items: flex-end;

  max-width: 70px;
  margin: 0;

  grid-area: img;
}

.product-box__item--small > .product-box__img > .img-fluid {
  animation: none;

  object-fit: contain;
}

.product-box__item--small > .product-box__title {
  margin: 0;

  text-align: left;

  font-size: 1rem;

  grid-area: title;
}

.product-box__item--small > .product-box__meta {
  position: relative;

  display: flex;
  align-items: center;

  font-size: 1.2rem;
  font-weight: bold;

  grid-area: price;
}

.product-box__btn--delete {
  position: absolute;
  top: -32px;
  right: -15px;

  width: 22px;
  height: 22px;

  transition: 0.2s linear;

  color: white;
  border: 0;
  border-radius: 50px;
  background: #000000;

  font-size: 0.5rem;
  font-weight: 900;
}

.product-box__btn--delete:hover {
  cursor: pointer;

  color: #000000;
  border: 1px inset #000000;
  background: #fff;
}

.btn-check {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;

  padding: 0 12px;

  transition: 0.2s linear;  
  text-transform: uppercase;color: white;
  border: 1px solid #000000;
  border-radius: 4px;
  background: black;
}

.btn-check:hover {
  cursor: pointer;

  color: #000000;
  border: 1px solid #000000;
  background: #ffffff;
}

.btn-check:focus {
  outline: none;
}

.top-cart-info__item {
  display: flex;

  font-size: 1.1rem;
}

.show-cart {
  cursor: pointer;
}

.top-cart-grid {
  position: absolute;
  z-index: 1000;
  top: 100%;
  right: 0;
  left: 0;

  width: 100%;
  padding: 1rem 0;

  background: white;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.3);
}

.top-cart-grid-title {
  display: grid;

  margin-bottom: 0.5rem;
  padding-bottom: 0.5rem;

  grid-template-columns: 3fr 1fr 1fr 1fr 1fr;
}

.top-cart-grid-body {
  display: grid;

  padding: 0.2rem 0;

  grid-template-columns: 3fr 1fr 1fr 1fr 1fr;
}

/* filter-box ================================================================================ */
.filter-box {
  display: flex;
  flex-wrap: wrap;

  margin-bottom: 1rem;
  padding: 1rem;

  border-radius: 10px;
  background: #fff;
}
.filter-label {
  margin-right: 1rem;
}
.select-control {
  display: flex;
  justify-content: space-between;

  min-width: 285px;
  margin-right: 1rem;

  background: none;
}

.category-control {
  display: none;
}

.category-control + .radio-control {
  padding: 5px 10px;

  cursor: pointer;
  transition: 0.2s linear;

  border-radius: 50px;
  background: #e5ebed;
}

.category-control:checked + .radio-control {
  color: white;
  background: black;
}

.price-select-box {
  position: relative;

  display: flex;

  min-width: 285px;

  transition: 0.2s linear;
}

.price-value {
  position: absolute;
  top: 50%;
  left: 50%;

  transform: translate(-50%, -50%);
  pointer-events: none;

  color: white;

  font-size: 0.8rem;

  mix-blend-mode: difference;
}

input[type="range"] {
  overflow: hidden;

  width: 100%;

  background: transparent;

  -webkit-appearance: none;
}

input[type="range"]:focus {
  outline: none;
}

input[type="range"]::-webkit-slider-thumb {
  overflow: hidden;

  width: 3px;
  height: 28px;

  cursor: pointer;

  border-radius: 50px;
  background: black;
  box-shadow: -200px 0px 1px 200px black;

  -webkit-appearance: none;
}

input[type="range"]::-webkit-slider-runnable-track {
  overflow: hidden;

  width: 100%;

  cursor: pointer;

  border-radius: 50px;
  background: #e5ebed;
}

.bottom-footer {
  margin-bottom: 200px;
}

/* media ================================================================================ */

@media (max-width: 768px) {
  .filter-box {
    height: 100px;
  }
  .select-control {
    margin: 0;
  }
}

@media (max-width: 576px) {
  .top-cart-info__goods {
    margin-right: 10px;
  }
  .product-box__item--small {
    min-width: 175px;
  }
}

.navbar-nav > li {
  margin-right: 15px;
}

.welcome-user {
  margin-top: 8px; /* Adjust this value as needed */
}
/* Styles for the modal overlay */
.modal {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 9999;
}

/* Styles for the modal content */
/* Styles for the modal overlay */
.modal {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 9999;
}

/* Styles for the modal content */
.modal-content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #f9f9f9;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0 2px 16px rgba(0, 0, 0, 0.2);
  max-width: 500px;
  width: 90%;
}

/* Styles for the checkout form */
.form {
  margin-bottom: 20px;
}

.form .group {
  margin-bottom: 20px;
}

.form label {
  font-size: 16px;
  font-weight: bold;
  color: #333;
}

.form input[type="text"],
.form select {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.form select {
  appearance: none;
  -webkit-appearance: none;
  background: url("down-arrow-icon.png") no-repeat right center;
  background-size: 20px;
  padding-right: 30px;
}

/* Styles for the return section */
.return {
  border-top: 1px solid #ccc;
  padding-top: 20px;
  margin-top: 20px;
}

.return .row {
  display: flex;
  justify-content: space-between;
  font-size: 16px;
  color: #333;
}

.return .row:last-child {
  margin-top: 10px;
}

.return .row div {
  font-weight: bold;
}

/* Styles for the checkout button */
.buttonCheckout {
  display: block;
  width: 100%;
  padding: 12px 20px;
  font-size: 18px;
  font-weight: bold;
  text-transform: uppercase;
  color: #fff;
  background-color: #007bff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.buttonCheckout:hover {
  background-color: #0056b3;
}

/* Additional styles to improve the appearance */
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  margin: 0;
  background-color: #f1f1f1;
  color: #333;
}

h1 {
  font-size: 24px;
  font-weight: bold;
  margin: 0 0 20px;
}

/* Add more styles as needed */


/* Add more styles as needed */


</style>
</head>

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
					
					<li><a href="contact.html">contact</a></li>
					<li><a href="userlogout.jsp">Logout</a></li>
					<li class="welcome-user" style="color: #e74c3c;">Welcome <%=username%></li>
				</ul> <!-- /.nav -->
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
		</nav>
	</section> <!-- /#header -->
    <div class="app-container pt-40">

        <!-- Your existing cart HTML -->
<div class="top-cart">
    <div class="top-cart__info">
        <div class="top-cart-info__goods">
            <!-- Place your cart items here, e.g., dynamically generated using JavaScript -->
            
            <!-- Add more items as needed -->
        </div>
        <button class="btn-check" id="order-button">Order
            <span class="top-cart-info__item">
                <span class="red-info">0</span>
            </span>
        </button>
    </div>
</div>

<!-- Popup form content -->
<div id="popup-form" class="modal">
  <div class="modal-content">
    <div class="right">
      <h1>Checkout</h1>
      <div class="form">
        <!-- Your checkout form fields with the "required" attribute -->
        <div class="group">
          <label for="name">Full Name</label>
          <input type="text" name="name" id="name" required>
        </div>
        <div class="group">
          <label for="phone">Phone Number</label>
          <input type="text" name="phone" id="phone" required>
        </div>
        <div class="group">
          <label for="address">Address</label>
          <input type="text" name="address" id="address" required>
        </div>
        <div class="group">
          <label for="country">Country</label>
          <select name="country" id="country" required>
            <option value="">Choose..</option>
            <option value="Kingdom">Kingdom</option>
          </select>
        </div>
        <div class="group">
          <label for="city">City</label>
          <select name="city" id="city" required>
            <option value="">Choose..</option>
            <option value="London">London</option>
          </select>
        </div>
      </div>
      
      <button class="buttonCheckout">CHECKOUT</button>
    </div>
  </div>
</div>


<!-- Payment page form -->
<div id="payment-page" style="display: none;">
    <form id="payment-form">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <!-- Additional payment-related fields can be added here -->

        <button type="submit">Complete Order</button>
    </form>
</div>


        </div><!-- /.top-cart -->



        <div class="wrap">
            <section class="container">
                <div class="filter-box">
                    <div class="select-box">
                        <div class="select-control">
                            <input type="radio" name="Category" data-value-category="all" id="radio-all"
                                class="category-control" checked>
                            <label class="radio-control" for="radio-all">All</label><br>
                            <input type="radio" name="Category" data-value-category="road" id="radio-road"
                                class="category-control">
                            <label class="radio-control" for="radio-road">Wooden HandiCrafts</label><br>
                            <input type="radio" name="Category" data-value-category="mountain" id="radio-mountain"
                                class="category-control">
                            <label class="radio-control" for="radio-mountain">Metal HandiCrafts</label><br>
                            <input type="radio" name="Category" data-value-category="bmx" id="radio-bmx"
                                class="category-control">
                            <label class="radio-control" for="radio-bmx">Marble HandiCrafts</label><br>
                            <input type="radio" name="Category" data-value-category="iron" id="radio-iron"
                                class="category-control">
                            <label class="radio-control" for="radio-iron">Iron HandiCrafts</label><br>
                            <input type="radio" name="Category" data-value-category="brass" id="radio-brass"
                                class="category-control">
                            <label class="radio-control" for="radio-brass">Brass HandiCrafts</label><br>
                        </div>

                    </div><!-- /.select-box -->
                    <div class="price-select-box">
                        <input type="range" min="0" max="3870" value="2850" class="price-control" data-filter='price'>
                        <span class="price-value">price to <span class="price-value__item">3870</span></span>
                    </div><!-- /.price-select-box -->
                  </div><!-- /filter-box-->



                  <div class="products-box grid-box">
  
                      <div data-category='road' value="2850" class="product-box__item">
                          <h3 class="product-box__title">Wooden keychain holder</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd1.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;2850 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="780" class="product-box__item">
                          <h3 class="product-box__title">Tribal Couple</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m1.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;780 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='road' value="1100" class="product-box__item">
                          <h3 class="product-box__title">Handmade Wooden clock</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd2.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1100 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="450" class="product-box__item">
                          <h3 class="product-box__title">Tribal Swan Boat</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m2.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;450 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='road' value="600" class="product-box__item">
                          <h3 class="product-box__title">Handmade Wooden Vase</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd3.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;600 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="320" class="product-box__item">
                          <h3 class="product-box__title">White Metal Sankli Haar</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m3.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;320 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="500" class="product-box__item">
                          <h3 class="product-box__title">Black Metal Elephant</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m4.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;500 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="1250" class="product-box__item">
                          <h3 class="product-box__title">Bidri Shanay Vase Sheet Mahytabi Jadi</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m5.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1250 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="780" class="product-box__item">
                          <h3 class="product-box__title">Bowel Fish Tarkashi</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m6.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;780 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="780" class="product-box__item">
                          <h3 class="product-box__title">Budha Tarkashi</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m7.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;780 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='mountain' value="780" class="product-box__item">
                          <h3 class="product-box__title">Hookah Sheet Star</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/m8.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;780 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='road' value="1900" class="product-box__item">
                          <h3 class="product-box__title">Queen Mohammad shahi original painting</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd4.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1900 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='road' value="1900" class="product-box__item">
                          <h3 class="product-box__title">Karnataka Tribal Handmade idol</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd5.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1900 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='road' value="1900" class="product-box__item">
                          <h3 class="product-box__title">Handmade Wooden Krishna</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd6.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1900 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='road' value="1900" class="product-box__item">
                          <h3 class="product-box__title">Thanda Tribal Handmade idol</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd7.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1900 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='road' value="1900" class="product-box__item">
                          <h3 class="product-box__title">Handmade Radha Krishna</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/wd8.png">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1900 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Marble Stand clock </h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h1.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The wedding Elephant</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h2.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The Jug</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h3.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The White Lion</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h4.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The Tok Marble</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h5.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Designer Marble</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h6.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The Long Jug</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h7.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                       <div data-category='bmx' value="1620" class="product-box__item">
                          <h3 class="product-box__title">The Idle of God</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/h8.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Lord Krishna</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i1.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Ancient Culture </h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i2.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Sun With Dance Culture</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i3.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Milkman Bicycle</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i4.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Filmware Iron Craft</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i5.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Pigeon Stand for drinking</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i6.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Ancient Stand</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i7.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      <div data-category='iron' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Candle Stand</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/i8.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                      <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Elephant Phantom </h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b1.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Lord Krishna </h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b2.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Brass Pot</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b3.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Steam Utensil</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b4.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">War Board</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b5.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Bullock Cart</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b6.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Musian Band</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b7.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                       <div data-category='brass' value="1620" class="product-box__item">
                          <h3 class="product-box__title">Water Pump</h3>
                          <div class="product-box__img">
                              <img class="img-fluid" src="assets/images/my/b8.jpg">
                          </div>
                          <div class="product-box__meta">
                              <p>&#8377;1620 </p><button class="product-box__btn">+</button>
  
                          </div>
                      </div>
                      
                  </div><!-- /product-box-->

            </section>
        </div>

        <footer class="bottom-footer bg-beetroot py-1">
            <div class="container">
            </div>
        </footer>
    </div><!-- /.app-container -->


    <script src="js/filter.js"></script>
    <script src="js/cart.js"></script>
    <script src="js/test.js"></script>
    
    <script>
    const filter = {
    		  filterAction() {
    		    document.querySelectorAll(".product-box__item").forEach((item) => {
    		      let categoryAtribut = item.getAttribute("data-category");
    		      let priceAtribut = Number(item.getAttribute("value"));

    		      if (
    		        (filter.category() == categoryAtribut || filter.category() == "all") &&
    		        (filter.price() >= priceAtribut || filter.price() == "0")
    		      ) {
    		        item.style.display = "flex";
    		      } else {
    		        item.style.display = "none";
    		      }
    		    });
    		  },

    		  price() {
    			    let priceValue = document.querySelector(".price-value__item");
    			    let selectedValue = Number(document.querySelector("[data-filter]").value);
    			    priceValue.innerHTML = selectedValue.toLocaleString("en-IN", {
    			      style: "currency",
    			      currency: "INR",
    			    });

    			    return selectedValue;
    			  },

    		  category() {
    		    let radio = document.querySelectorAll(".category-control");
    		    for (const item of radio) {
    		      if (item.checked) {
    		        return item.getAttribute("data-value-category");
    		      }
    		    }
    		  },

    		  checkAtributeToggle() {
    		    document.querySelector(".select-control").addEventListener("click", () => {
    		      document.querySelectorAll(".category-control").forEach((item) => {
    		        item.removeAttribute("checked");
    		      });

    		      if (event.target.classList == "category-control") {
    		        event.target.setAttribute("checked", "");
    		      } else {
    		        event.stopImmediatePropagation();
    		      }
    		    });
    		  },
    		};

    		filter.checkAtributeToggle();

    		document
    		  .querySelector(".select-control")
    		  .addEventListener("click", filter.filterAction);

    		document
    		  .querySelector(".price-control")
    		  .addEventListener("change", filter.filterAction);

    		const cart = {
    				totalQuantity: 0,
    				  totalPrice: 0,
    		  add() {
    		    let div = document.querySelector(".top-cart-info__goods");
    		    let element = event.target.parentNode.parentNode.cloneNode("true");
    		    let elementAnimation = event.target.parentNode.parentNode;
    		    elementAnimation.classList.add("animation");

    		    element.classList = "product-box__item--small";
    		    element.removeAttribute("style");
    		    element.querySelector(".product-box__btn").innerHTML = "X";
    		    element.querySelector(".product-box__btn").classList =
    		      "product-box__btn--delete";

    		    document.querySelector(".top-cart").style.bottom = 0 + "px";
    		    div.appendChild(element);
    		    cart.price();

    		    setTimeout(() => {
    		      elementAnimation.classList.remove("animation");
    		    }, 1000);
    		  },
    		  updateTotals() {
    			    this.totalQuantity = 0;
    			    this.totalPrice = 0;

    			    document.querySelectorAll(".product-box__item--small").forEach((item) => {
    			      const quantity = Number(item.getAttribute("data-quantity"));
    			      const price = Number(item.getAttribute("value"));

    			      this.totalQuantity += quantity;
    			      this.totalPrice += quantity * price;
    			    });

    			    // Update the total quantity and total price in the popup form
    			    const totalQuantityElement = document.querySelector(".totalQuantity");
    			    const totalPriceElement = document.querySelector(".totalPrice");
    			    totalQuantityElement.textContent = this.totalQuantity;
    			    totalPriceElement.textContent = this.totalPrice.toLocaleString("en-IN", {
    			      style: "currency",
    			      currency: "INR",
    			    });
    			  },
    		  delete() {
    		    if (event.target.classList == "product-box__btn--delete") {
    		      let mainElement = event.target.parentNode.parentNode
    		      mainElement.classList.add('delete')
    		      setTimeout(() => {
    		        mainElement.remove();
    		        cart.price();
    		      }, 900);
    		    }
    		  },

    		  price() {
    			    let priceValue = 0;
    			    document.querySelectorAll(".product-box__item--small").forEach((item) => {
    			      priceValue += Number(item.getAttribute("value"));
    			    });
    			    document.querySelector(".red-info").innerHTML = priceValue.toLocaleString("en-IN", {
    			      style: "currency",
    			      currency: "INR",
    			    });

    			    if (priceValue === 0) {
    			      document.querySelector(".top-cart").style.bottom = -120 + "px";
    			    }
    			  },
    		};

    		document
    		  .querySelectorAll(".product-box__btn")
    		  .forEach((item) => item.addEventListener("click", cart.add));

    		document
    		  .querySelector(".top-cart-info__goods")
    		  .addEventListener("click", cart.delete);

    		
    	    
    	//ihcdiashf
    	// Add an event listener to the "Order" button
document.getElementById("order-button").addEventListener("click", showPopupForm);

// Function to display the popup form
function showPopupForm() {
  const popupForm = document.getElementById("popup-form");
  popupForm.style.display = "block";
}

// Function to hide the popup form when the user clicks outside of it
window.onclick = function (event) {
  const popupForm = document.getElementById("popup-form");
  if (event.target === popupForm) {
    popupForm.style.display = "none";
  }
};
    	
document.querySelector(".buttonCheckout").addEventListener("click", redirectToRegFail);

function redirectToRegFail() {
  // Perform form validation before redirection
  const nameInput = document.getElementById("name");
  const phoneInput = document.getElementById("phone");
  const addressInput = document.getElementById("address");
  const countryInput = document.getElementById("country");
  const cityInput = document.getElementById("city");

  if (nameInput.value === "" || phoneInput.value === "" || addressInput.value === "" || countryInput.value === "" || cityInput.value === "") {
    alert("Please fill in all the required fields before proceeding.");
    return; // Stop further execution if any required field is empty
  }

  // If all fields are filled, then redirect to regfail.html
  window.location.href = "thankyou.html";
}

 		  
    </script>
    
    
    
</body>

</html>