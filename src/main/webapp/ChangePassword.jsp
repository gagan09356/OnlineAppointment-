<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="js/AjaxCalling.js"></script>
</head>
<body>
	<section class="ftco-section-2 img"
		style="background-image: url(images/bg_3.jpg);">
		<br>
		<br>
		<div class="container">
			<div class="row d-md-flex justify-content-end">
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-lg-4">
							<form>
								<div class="form-group">
									<input type="email" id="email" name="email" class="form-control"
										placeholder="Your Email" size="35"  required>
								</div>
								<div class="form-group">
									<input type="password" id="old_password" name="old_password"
										class="form-control" placeholder="Old Password"  required>
								</div>
								<div class="form-group">
									<input type="password" id="new_password" name="new_password"
										class="form-control" placeholder="New Password"  required>
								</div>
								<div class="form-group">
									<input type="button" id="changePassword" value="Confirm"
										class="btn btn-primary py-3 px-5" style="align: center;">
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