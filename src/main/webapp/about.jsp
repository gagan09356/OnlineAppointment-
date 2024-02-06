
<%@page import="com.model.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp" %>

   <%! DbConnection conn=new DbConnection();
   		ResultSet rs;%>
    
    <div class="hero-wrap" style="background-image: url('images/bg_6.jpg'); background-attachment:fixed;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-8 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>About</span></p>
            <h1 class="mb-3 bread">About Us</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section-2">
      <div class="container-fluid d-flex">
        <div class="section-2-blocks-wrapper row no-gutters">
          <div class="img col-sm-12 col-lg-6" style="background-image: url('images/about.jpg');">
            <a href="https://vimeo.com/45830194" class="button popup-vimeo"><span class="ion-ios-play"></span></a>
          </div>
          <div class="text col-lg-6 ftco-animate">
            <div class="text-inner align-self-start">
              
              <h3>Welcome to Remedic Hospital since 1898 established Far far away.</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>

              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
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
        	 <%List<Object> list=conn.getList("from Doctor_Detail ");
    	 		for(Iterator<Object> it=list.iterator();it.hasNext();){
    	 			Doctor_Detail detail=(Doctor_Detail)it.next();
    		System.out.print(detail.getDoctor_name());
    	 %>
        	<div class="col-md-6 col-lg-3 ftco-animate">
	          <div class="block-2">
	            <div class="flipper">
	              <div class="front" style="background-image: url(images/doctor-1.jpg);">
	                <div class="box">
	                  <h2><%=detail.getDoctor_name() %></h2>
	                  <p><%=detail.getdoctor_specialization() %></p>
	                </div>
	              </div>
	              <div class="back">
	                <!-- back content -->
	                <blockquote>
	                 <p>&ldquo;<%out.println("Well experience in ");%><%=detail.getdoctor_specialization()%><%out.println("of ");%><%=detail.getdoctor_experience() %><%out.println("years ");%>&rdquo;</p>
	                </blockquote>
	                <div class="author d-flex">
	                  <div class="image mr-3 align-self-center">
	                    <div class="img" style="background-image: url(images/doctor-1.jpg);"></div>
	                  </div>
	                  <div class="name align-self-center"><%=detail.getDoctor_name() %> <span class="position"><%=detail.getdoctor_specialization() %></span></div>
	                </div>
	              </div>
	            </div>
	          </div> <!-- .flip-container -->
	        </div><%} %>
	        
        </div>
        <div class="row">
        	<div class="col-md-9 ftco-animate">
        		<h4>We are well experienced doctors</h4>
        		<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
        	</div>
        </div>
    	</div>
    </section>

   <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_4.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">Some fun facts</h2>
            <span class="subheading">Far far away, behind the word mountains, far from the countries</span>
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="60">0</strong>
		                <span>Hospital</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="200">0</strong>
		                <span>Doctors</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="100">0</strong>
		                <span>Clinics</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="200">0</strong>
		                <span>Reviews</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

    <section class="ftco-section testimony-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Testimonials</h2>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-12 ftco-animate">
            <div class="carousel-testimony owl-carousel">
             <%List<Object> getListTest=obj1.getList("from Testimonials ");
       			for(Iterator<Object> iterator=getListTest.iterator();iterator.hasNext();){
        		Testimonials detail=(Testimonials) iterator.next(); %>
              <div class="item">
                <div class="testimony-wrap text-center">
                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5"><%=detail.getTestdescription() %></p>
                    <p class="name"><%=detail.getTestname() %></p>
                    <span class="position"><%=detail.getTestrole() %></span>
                  </div>
                </div>
              </div>
              <%} %>
            </div>
          </div>
        </div>
      </div>
    </section>

<%@ include file="Footer.jsp" %>