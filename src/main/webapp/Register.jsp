
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
<title>Remedic - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript" src="js/capatcha.js"></script>
<script src="js/AjaxCalling.js"></script>


</head>
<body onload="createCaptcha()">

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html"><i
				class="flaticon-pharmacy"></i><span>Re</span>Medic</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section class="ftco-section-2 img"
		style="background-image: url(images/bg_3.jpg);">
		<br> <br>
		<div class="container">
			<div class="row d-md-flex justify-content-end">
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-lg-11">
							<form id="registerform">
								<div class="form-group">
									<input type="text" id="user_name" class="form-control"
										placeholder="Your Name" size="65" required>
								</div>
								<div class="form-group">
									<input type="email" id="email" class="form-control"
										placeholder="Your Email" required>
								</div>
								<div class="form-group">
									<input type="password" id="password" class="form-control"
										placeholder="Password" required>
								</div>
								<div class="form-group">
									<input type="password" id="confirm_password"
										class="form-control" placeholder="Confirm Password" required>
								</div>
								<div class="form-group">
									<input type="tel" pattern="^\d{10}$" id="mobile_no" class="form-control"
										placeholder="Mobile no." required></input>
								</div>
								<div class="form-group">
									<input type="text" id="address" class="form-control"
										placeholder="address" required></input>
								</div>
								<div id="captcha"></div>
								<div class="form-group">
									<input type="text" placeholder="Captcha" id="cpatchaTextBox" />
								</div>
								<div class="form-group">
									<input type="button" onclick="validateCaptcha()"
										id="registerbutton" value="Register"
										class="btn btn-primary py-3 px-5" /> <a href="Login.jsp"
										class="btn btn-primary py-3 px-5"><span>Login</span></a>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
<%@include file="Footer.jsp"%>