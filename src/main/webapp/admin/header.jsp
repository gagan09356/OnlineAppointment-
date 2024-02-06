<!DOCTYPE html>
<%@page import="com.connection.DbConnection"%>
<%@page import="java.sql.ResultSet"%>


<html lang="en">
<%Object loginFlag=session.getAttribute("email");
	if(loginFlag==null){
	 System.out.println("after if"+session.getAttribute("email"));
	response.sendRedirect("adminLogin.jsp");
	return;}%>
<head>
<title>Remedic - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../css/animate.css">

<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">

<link rel="stylesheet" href="../css/aos.css">

<link rel="stylesheet" href="../css/ionicons.min.css">

<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">


<link rel="stylesheet" href="../css/flaticon.css">
<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="../js/AjaxCalling.js"></script>
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">

		<div class="container">
			<a class="navbar-brand" href="../Welcome.jsp"><i
				class="flaticon-pharmacy"></i><span>Re</span>Medic</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="../Welcome.jsp" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="../about.jsp"
						class="nav-link">About</a></li>
					<li class="nav-item"><a href="../department.jsp"
						class="nav-link">Departments</a></li>
					<li class="nav-item"><a href="../Doctor.jsp" class="nav-link">Doctors</a></li>
					<li class="nav-item"><a href="../Contact.jsp" class="nav-link">Contact</a></li>
					<li class="nav-item"><a href="AdminLogout.jsp"
						class="nav-link">Logout</a></li>
					<li class="nav-item cta"><a href="../contact.jsp"
						class="nav-link" data-toggle="modal"
						data-target="#modalAppointment"><span>Appointment</span></a></li>
				</ul>
			</div>
		</div>
	</nav>