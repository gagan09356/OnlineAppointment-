
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>







<section class="ftco-section-parallax">
	<div class="parallax-img d-flex align-items-center">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<h2>Subcribe to our Newsletter</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
					<div class="row d-flex justify-content-center mt-5">
						<div class="col-md-8">
							<form action="#" class="subscribe-form">
								<div class="form-group d-flex">
									<input type="text" class="form-control"
										placeholder="Enter email address"> <input
										type="submit" value="Subscribe" class="submit px-3">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<footer class="ftco-footer ftco-bg-dark ftco-section img"
	style="background-image: url(images/bg_5.jpg);">
	<div class="overlay"></div>
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Remedic</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.</p>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>

			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Site Links</h2>
					<ul class="list-unstyled">
						<li><a href="Welcome.jsp" class="py-2 d-block">Home</a></li>
						<li><a href="about.jsp" class="py-2 d-block">About</a></li>
						<li><a href="department.jsp" class="py-2 d-block">Departments</a></li>
						<li><a href="Doctor.jsp" class="py-2 d-block">Doctors</a></li>
						<li><a href="#" class="py-2 d-block">Contact</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Have a Questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">

				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>

<!-- Modal -->
<div class="modal fade" id="modalAppointment" tabindex="-1"
	role="dialog" aria-labelledby="modalAppointmentLabel"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalAppointmentLabel">Appointment</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="Footer.jsp">
					<div class="form-group">
						<label for="appointment_name" class="text-black">Full Name</label>
						<input type="text" class="form-control" name="patientName"
							id="appointment_name">
					</div>
					<div class="form-group">
						<label for="appointment_email" class="text-black">Email</label> <input
							type="text" class="form-control" name="email"
							id="appointment_email">
					</div>
					<div class="form-group">
						<label for="appointment_mobile" class="text-black">Mobile
							No.</label> <input type="text" class="form-control" name="mobile"
							id="appointment_mobile">
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="appointment_date" class="text-black">Date</label> <input
									type="text" class="form-control" name="date"
									id="appointment_date">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="appointment_time" class="text-black">Time</label> <input
									type="text" class="form-control" name="time"
									id="appointment_time">
							</div>
						</div>
					</div>


					<!-- <div class="form-group">
                <label for="appointment_message" class="text-black">Message</label>
                <textarea name="" id="appointment_message" name="message" class="form-control" cols="30" rows="10"></textarea>
              </div> -->
					<div class="form-group">
						<input type="submit" value="Send Message" class="btn btn-primary">
					</div>
				</form>
			</div>

		</div>
	</div>
</div>




<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>