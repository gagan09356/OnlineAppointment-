<%@page import="com.model.*"%>
<%@page import="java.util.Iterator"%>
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
					<span class="mr-2"><a href="Welcome.jsp">Home</a></span> <span>Departments</span>
				</p>
				<h1 class="mb-3 bread">Departments</h1>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section">
	<div class="container">
		<div class="row d-flex">
			<%	List<Object> depList=obj1.getList("from Doctor_Department");
         	for(Iterator<Object> it=depList.iterator();it.hasNext();){
         		Doctor_Department doc=(Doctor_Department)it.next(); %>
			<div class="col-lg-6 d-flex ftco-animate">
				<div class="dept d-md-flex">
					<a class="img" style="background-image: url(images/dept-1.jpg);"></a>
					<div class="text p-4">
						<h3><%=doc.getDepartment_name()%>
							Department
						</h3>
						<br></br>

						<p><%=doc.getDepartment_discription() %>
						</p>
						<ul>
							<li><span class="ion-ios-checkmark"></span>Emergency</li>
							<li><span class="ion-ios-checkmark"></span>Laboratory</li>
							<li><span class="ion-ios-checkmark"></span>Dental</li>
						</ul>
					</div>
				</div>
			</div>
			<%}%>

		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate text-center">
				<h2 class="mb-4">Laboratory Test</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 ftco-animate">
				<div id="accordion">
					<div class="row">
						<div class="col-md-6">
							<%	int s=0;
    							List<Object> list1=obj1.getList("from Labrotary");
    							for(Iterator<Object> it=list1.iterator();it.hasNext();){
         						Labrotary lab=(Labrotary)it.next();
         						%>
							<div class="card">
								<div class="card-header">
									<a class="card-link" data-toggle="collapse" href="#<%=s%>"
										aria-expanded="true" aria-controls="menuone"><%=lab.getLabTest_name() %>
										<small>$<%=lab.getLabTest_price()%></small><span
										class="expanded"><i class="icon-minus-circle"></i></span><span
										class="collapsed"><i class="icon-plus-circle"></i></span></a>
								</div>
								<div id="<%=s%>" class="collapse show">
									<div class="card-body">
										<p><%=lab.getLabTest_desc() %></p>
										<br>
										<p>
											Pre-test Information: <small><%=lab.getPre_info()%></small>
										</p>
									</div>
								</div>
							</div>
							<%s++;} %>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate text-center">
				<h2 class="mb-4">Our Experienced Doctors</h2>
			</div>
		</div>
		<div class="row">
			<%List<Object> list=obj1.getList("from Doctor_Detail ");
    	 		for(Iterator<Object> it=list.iterator();it.hasNext();){
    	 			Doctor_Detail detail=(Doctor_Detail)it.next();
    		System.out.print(detail.getDoctor_name());
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
									&ldquo;<%out.println("Well experience in ");%><%=detail.getdoctor_specialization()%>
									<%out.println("of ");%><%=detail.getdoctor_experience() %>
									<%out.println("years ");%>&rdquo;
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
	</div>
</section>
<%@ include file="Footer.jsp"%>