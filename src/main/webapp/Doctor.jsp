<%@page import="java.sql.Blob"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Doctor_Detail"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>



<div class="hero-wrap"
	style="background-image: url('images/bg_6.jpg'); background-attachment: fixed;">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-center"
			data-scrollax-parent="true">
			<div class="col-md-8 ftco-animate text-center">
				<p class="breadcrumbs">
					<span class="mr-2"><a href="index.html">Home</a></span> <span>Doctor</span>
				</p>
				<h1 class="mb-3 bread">Well Experienced Doctors</h1>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section">
	<div class="container">
		<div class="row">
			<% List<Object> getList=obj1.getList("from Doctor_Detail where doctor_id=40");
        for(Iterator<Object> iterator=getList.iterator();iterator.hasNext();){
        	Doctor_Detail detail=(Doctor_Detail) iterator.next();
        	//System.out.println(detail.getDoctor_name());
           	 %>
			<div class="col-md-6 col-lg-3 ftco-animate">
				<div class="block-2">
					<div class="flipper">
						<div class="front"
							style="background-image: url(<%=detail.getPhoto()%>);">
							<div class="box">
								<h2><%=detail.getDoctor_name() %></h2>
								<p><%=detail.getdoctor_specialization() %></p>
							</div>
						</div>
						<div class="back">
							<!-- back content -->
							<blockquote>
								<p>
									&ldquo;<%=detail.getdoctor_specialization() %>&rdquo;
								</p>
							</blockquote>
							<div class="author d-flex">
								<div class="image mr-3 align-self-center">
									<div class="img"
										style="background-image: url(<%=detail.getPhoto()%>);"></div>
								</div>
								<div class="name align-self-center"><%=detail.getDoctor_name() %>
									<span class="position"><%=detail.getdoctor_specialization() %></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .flip-container -->
			</div>
			<%} %>

	</div>
</section>
<%@ include file="Footer.jsp"%>