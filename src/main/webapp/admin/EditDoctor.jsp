<%@page import="com.model.Doctor_Detail"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%!DbConnection con = new DbConnection();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		List<Object> getList = con.getInfo("from Doctor_Detail where id=:param", id);
		for (Iterator<Object> iterator = getList.iterator(); iterator.hasNext();) {
			Doctor_Detail detail = (Doctor_Detail) iterator.next();
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
										<td>
											<div class="form-group">
												<input type="hidden" placeholder="DoctorId" id="d_id"
													size="35" value=<%=detail.getDoctor_id()%> required /><br>
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
											value=<%=detail.getDoctor_name()%> required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Specilization</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="specialization" id="doctor_spec"
											value=<%=detail.getdoctor_specialization()%> size="35"
											required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Experience</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="experience" id="experience"
											value=<%=detail.getdoctor_experience()%> size="35" required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Mobile NO.</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="Mobile" id="d_mobile"
											value=<%=detail.getDoctor_mobile()%> size="35" required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Email Id</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="email" id="d_email"
											value=<%=detail.getDoctor_email()%> size="35" required /><br>
										<br></td>
									</tr>
									<tr>
										<td>
										<th>Address</th>
										</td>
										<td class="form-group"><input type="text"
											placeholder="Address" id="d_address"
											value=<%=detail.getDoctor_address()%> size="35" required /><br>
										<br></td>
									</tr>
									<tr class="form-group">
										<td colspan="2"><input type="button" id="updateDoctorBtn"
											value="Update" class="btn btn-primary py-3 px-5" /></td>
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