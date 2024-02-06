
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


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

<script src="js/AjaxCalling.js"></script>
</head>
<body>

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
					<li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
					<li class="nav-item"><a href="admin/adminLogin.jsp"
						class="nav-link">LoginAsAdmin</a></li>
					<li class="nav-item"><a href="Register.jsp" class="nav-link">Register</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<section class="ftco-section-2 img"
		style="background-image: url(images/bg_3.jpg);">
		<br>
		<br>
		<div class="container">
			<h5 class="modal-title"></h5>
			<div class="row d-md-flex justify-content-end">
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-lg-4	">
							<form>
								<div class="form-group">
									<input type="email" id="email" class="form-control"
										placeholder="Enter your registered mail id.." size="35"  required>
								</div>
								<div class="form-group">
									<input type="button" id="forgetbtn" value="Forget"
										class="btn btn-primary py-3 px-5">
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
<%@ include file="Footer.jsp"%>