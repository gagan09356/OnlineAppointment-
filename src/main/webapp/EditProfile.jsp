<%@page import="com.model.User_Info"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/AjaxCalling.js"></script>

<%!DbConnection con = new DbConnection();%>

</head>
<body>
	<%
		String email = session.getAttribute("email").toString();
		List<Object> getList = con.getDetail("from User_Info where user_email_id=:p", email);
		for (Iterator<Object> iterator = getList.iterator(); iterator.hasNext();) {
			User_Info detail = (User_Info) iterator.next();
	%>

	<div>
		<h1>Edit Doctor Details</h1>
	</div>
	<div class="container">
		<div class="row d-md-flex justify-content-end">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-lg-4	">
						<div>
							<form>
								<table>
									<tr>
										<td class="form-group"><input type="hidden"
											placeholder="Mobile" id="d_id" value=<%=detail.getUser_id()%>
											size="35" required /><br>
										<br></td>
										<td class="form-group"><input type="hidden"
											placeholder="Mobile" id="d_email"
											value=<%=detail.getUser_email_id()%> size="35" required /><br>
										<br></td>
										<td>
											<div class="form-group">
												<input type="hidden" placeholder="DoctorId" id="d_id"
													size="35" value=<%=detail.getUser_id()%> required /><br>
												<br>
											</div>
										</td>
									</tr>
									<tr>
										<td>
										<th>Name</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="DoctorName" id="d_name" size="35"
											value=<%=detail.getUser_name()%> required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Mobile NO.</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="Mobile" id="d_mobile"
											value=<%=detail.getUser_mobile_no()%> size="35" required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Address</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="Address" id="d_address"
											value=<%=detail.getUser_address()%> size="35" required /><br>
										<br></td>
									</tr>

									<tr class="form-group">
										<td colspan="2"><input type="button"
											id="updateUserProfileBtn" value="Update"
											class="btn btn-primary py-3 px-5" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%}%>
</body>
<br>
<br></br>

<%@ include file="Footer.jsp"%>
