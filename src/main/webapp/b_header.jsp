<%@page import="com.connection.DbConnection"%>
<%@page import="com.*" %>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <title>Remedic - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">

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
  </head>
 <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.jsp"><i class="flaticon-pharmacy"></i><span>Re</span>Medic</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
        <!--   <li class="nav-item active"><a href="Login.jsp" class="nav-link">About</a></li> -->
       <!--    <li class="nav-item"><a href="Login.jsp" class="nav-link">Departments</a></li> -->
<!--           <li class="nav-item"><a href="Login.jsp" class="nav-link">Doctors</a></li> -->
        <!--   <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li> -->
          <!-- <li class="nav-item"><a href="Login.jsp" class="nav-link">Contact</a></li> -->
          <li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
          <li class="nav-item"><a href="admin/adminLogin.jsp" class="nav-link">LoginAsAdmin</a></li>
          <li class="nav-item"><a href="Register.jsp" class="nav-link">Register</a></li>
          <li class="nav-item cta"><a href="Login.jsp" class="nav-link" ><span>Make an Appointment</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
   <%! DbConnection obj=new DbConnection(); 
    	ResultSet rs; 
    	%>
    	
    		
<%-- <div><marquee direction="right" width="100%" bgcolor="white" onmouseover="this.stop();" onmouseout="this.start();" hspace="40"><%ResultSet rs= obj.getDiseaseName();while(rs.next()){%><a style="white-space:pre" href="disease.jsp?id=<%=rs.getInt(1)%>"><img src="images/person_2.jpg" height="40px" width="40px"/> &Tab;	</a><%} %></marquee></div>	
 --%>        
