<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/capatcha.js"></script>
<script src="js/AjaxCalling.js"></script>
<%@ include file="header.jsp"%>

<div class="container">
	<div class="row d-md-flex justify-content-end">
		<div class="col-md-9">
			<div class="row">
				<div class="col-md-lg-4	">
					<form onsubmit="validateCaptcha()">
						<div class="form-group">
							<label for="appointment_name" class="text-black">Full
								Name</label> <input type="text" class="form-control" name="patientName"
								id="appointment_name" required>
						</div>
						<div class="form-group">
							<label for="appointment_email" class="text-black">Email</label> <input
								type="email" class="form-control" name="email"
								id="appointment_email"  required>
						</div>
						<div class="form-group">
							<label for="appointment_mobile" class="text-black">Mobile
								No.</label> <input type="tel" pattern="^\d{10}$" class="form-control" name="mobile"
								id="appointment_mobile"  required>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_date" class="text-black">Date</label> <input
										type="text" class="form-control" name="appointment_date1"
										id="appointment_date1"
										value="<%=request.getParameter("date") %>" readonly>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_time" class="text-black">Time</label> <input
										type="text" name="appointment_time" id="appointment_time1"
										class="form-control"
										value="<%=request.getParameter("time") %>" readonly>
								</div>
							</div>
							<div class="form-group">
								<input type="hidden" class="form-control" name="doctor_id"
									id="doctor_id" value="<%=request.getParameter("doc_id")%>"
									readonly />
							</div>
						</div>
						<div id="captcha"></div>
						<div class="form-group">
							<input type="text" placeholder="Captcha" id="cpatchaTextBox" />
						</div>
						<div class="form-group">
							<input type="button" onclick="validateCaptcha()"
								id="appointmentBook" value="Make an Appointment"
								class="btn btn-primary py-3 px-5" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>

<%@ include file="Footer.jsp"%>