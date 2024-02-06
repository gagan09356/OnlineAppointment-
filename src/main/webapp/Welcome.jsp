
<%@ include file="header.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DbConnection"%>
<%@page import="java.sql.ResultSet"%>


<%! DbConnection obj=new DbConnection();
	//String patientName=null,doctorName=null;
	//Date appointmentDate=null,appointmentTime=null;
	SimpleDateFormat formatDate=new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat formatTime=new SimpleDateFormat("hh:mm:ss");
	List<String> patientName=new ArrayList<String>();
	List<String> doctorName=new ArrayList<String>();
	List<Integer> doctorId=new ArrayList<Integer>();
	List<Date> appointmentDate=new ArrayList<Date>();
	List<Date> appointmentTime=new ArrayList<Date>();
	List<Integer> appointmentId=new ArrayList<Integer>();
	%>

<div class="hero-wrap">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-center"
			data-scrollax-parent="true">
			<div class="col-md-8 ftco-animate text-center">
				<table border=1; width=100%>
					<tr>
						<td colspan="5">Welcome Mr./Ms. <%out.println(session.getAttribute("email"));%></td>
					</tr>
					<% %>
					<tr>
						<td>Patient Name</td>
						<td>Doctor Name</td>
						<td>Appointment Date</td>
						<td>Appointment Time</td>
						<td>Delete the Appointment</td>
					</tr>
					<% //System.out.println(session.getAttribute("email").toString());
                     	List<Object> appointDetail=obj.getDetail("from Appointment_Detail where user_id=(Select user_id from User_Info where user_email_id=:p)", session.getAttribute("email").toString());
                     	for(Iterator<Object> it=appointDetail.iterator();it.hasNext();){
                     		Appointment_Detail app=(Appointment_Detail)it.next();
                     		patientName.add(app.getPatient_name());
                     		appointmentDate.add(app.getAppointment_date());
                     		appointmentTime.add(app.getAppointment_time());
                     		doctorId.add(app.getDoctor_Detail().getDoctor_id());
                     		appointmentId.add(app.getAppointment_id());
                     	} 
                     	for(int i=0;i<patientName.size();i++){
                     		List<Object> detail=obj.getInfo("from Doctor_Detail where doctor_id=:param",doctorId.get(i));
                     		for(Iterator<Object> it=detail.iterator();it.hasNext();){
                         		Doctor_Detail doc=(Doctor_Detail)it.next();
                         		
                     	%>
					<tr>
						<td><%=patientName.get(i) %></td>
						<td><%=doc.getDoctor_name()%></td>
						<td><%=formatDate.format(appointmentDate.get(i)) %></td>
						<td><%=formatTime.format(appointmentTime.get(i))%></td>
						<td><a class="btn btn-primary py-1 px-3"
							href="DeleteAppointment.jsp?id=<%=appointmentId.get(i)%>">Delete
								Appointment</a></td>
					</tr>
					<%}} %>
				</table>
			</div>
		</div>
	</div>
</div>

<section class="ftco-services">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-4 ftco-animate py-5 nav-link-wrap">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<%	List<Object> depList=obj.getList("from Doctor_Department");
         			for(Iterator<Object> it=depList.iterator();it.hasNext();){
         			Doctor_Department doc=(Doctor_Department)it.next(); %>
					<a class="nav-link px-4 " id="v-pills-master-tab"
						data-toggle="pill" href="#<%=doc.getDoctor_department_id()%>"
						role="tab" aria-controls="v-pills-master" aria-selected="false"><span
						class="mr-3 flaticon-cardiogram"></span> <%=doc.getDepartment_name()%></a>
					<%} %>
				</div>
			</div>
			<div
				class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center">

				<div class="tab-content pl-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active py-5" id="v-pills-master"
						role="tabpanel" aria-labelledby="v-pills-master-tab">
						<span class="icon mb-3 d-block flaticon-cardiogram"></span>
						<h2 class="mb-4">Departments of Hospital</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo
							pariatur quam sequi quod iusto facilis officiis nobis sit quis
							molestias asperiores rem, blanditiis! Commodi exercitationem
							vitae deserunt qui nihil ea, tempore et quam natus quaerat
							doloremque.</p>
						<p>
							<a href="department.jsp" class="btn btn-primary">Learn More</a>
						</p>
					</div>
					<%	List<Object> depList1=obj.getList("from Doctor_Department");
         			for(Iterator<Object> it=depList1.iterator();it.hasNext();){
         			Doctor_Department doc=(Doctor_Department)it.next(); %>

					<div class="tab-pane fade py-5"
						id="<%=doc.getDoctor_department_id() %>" role="tabpanel"
						aria-labelledby="v-pills-master-tab">
						<span class="icon mb-3 d-block flaticon-cardiogram"></span>
						<h2 class="mb-4"><%=doc.getDepartment_name() %>Department
						</h2>
						<p><%=doc.getDepartment_discription() %></p>
						<p>Inventore fugit error iure nisi reiciendis fugiat illo
							pariatur quam sequi quod iusto facilis officiis nobis sit quis
							molestias asperiores rem, blanditiis! Commodi exercitationem
							vitae deserunt qui nihil ea, tempore et quam natus quaerat
							doloremque.</p>
						<p>
							<a href="department.jsp" class="btn btn-primary">Learn More</a>
						</p>
					</div>
					<%} %>
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
			<%List<Object> getList=obj.getList("from Doctor_Detail where doctor_experience >10 ");
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
								<p><%=detail.getdoctor_specialization()%></p>
							</div>
						</div>
						<div class="back">
							<!-- back content -->
							<blockquote>
								<%-- 	                  <p>&ldquo;<%=rs.getString(4) %>&rdquo;</p>--%>
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
		<div class="row">
			<div class="col-md-9 ftco-animate">
				<h4>We are well experienced doctors</h4>
				<p>A small river named Duden flows by their place and supplies
					it with the necessary regelialia. It is a paradisematic country, in
					which roasted parts of sentences fly into your mouth.</p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-counter img" id="section-counter"
	style="background-image: url(images/bg_4.jpg);">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div
				class="col-md-7 text-center heading-section heading-section-white ftco-animate">
				<h2 class="mb-4">Some fun facts</h2>
				<span class="subheading">Far far away, behind the word
					mountains, far from the countries</span>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="row">
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="60">0</strong> <span>Hospital</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="200">0</strong> <span>Doctors</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="100">0</strong> <span>Clinics</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="200">0</strong> <span>Reviews</span>
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
					<%List<Object> getListTest=obj.getList("from Testimonials ");
       			for(Iterator<Object> iterator=getListTest.iterator();iterator.hasNext();){
        		Testimonials detail=(Testimonials) iterator.next(); %>
					<div class="item">
						<div class="testimony-wrap text-center">
							<div class="user-img mb-5"
								style="background-image: url(images/person_1.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
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



<% patientName.clear();doctorName.clear(); doctorId.clear(); appointmentDate.clear(); appointmentTime.clear(); appointmentId.clear(); 
		%>

<%@ include file="Footer.jsp"%>
