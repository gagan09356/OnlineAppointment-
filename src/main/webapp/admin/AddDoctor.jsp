<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.model.*"%>

<%@page import="com.connection.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ include file="header.jsp"%> 
<%!DbConnection con = new DbConnection();%>

<div>
	<h1>Add Doctors</h1>
</div>
<div class="container">
	<div class="row d-md-flex justify-content-end">
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-lg-4	">
					<div>
						<form ENCTYPE="multipart/form-data" method="post" action="addDoctors">
							<!-- id='fileUploadForm' -->
							<div class="form-group">
								<input type="text" placeholder="DoctorName" id="d_name" name="d_name"
									size="35" required /><br>
								<br>
							</div>
							<div class="form-group">
								<Select id="doctor_dep" name="doctor_dep" style="width: 100%;" required>
									<option>Select Department</option>
									<%
										List<Object> specList = con.getList("	from Doctor_Department");
										for (Iterator<Object> it = specList.iterator(); it.hasNext();) {
											Doctor_Department detail = (Doctor_Department) it.next();
											//System.out.println(detail.getSpecialization());
									%>
									<option value=<%=detail.getDoctor_department_id()%>><%=detail.getDepartment_name()%></option>
									<%
										}
									%>
								</Select><br>
								<br>
							</div>
							<div class="form-group">
								<input type="text" placeholder="specialization" id="doctor_spec" name="doctor_spec"
									size="35" required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="text" placeholder="experience" id="experience" name="experience"
									size="35" required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="tel" pattern="^\d{10}$" placeholder="Mobile" id="d_mobile" name="d_mobile" size="35"
									required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="email" placeholder="email" id="d_email" name="d_email" size="35"
									required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="text" placeholder="Address" id="d_address" name="d_address"
									size="35" required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="file" placeholder="picture" id="file" name="file" size="35"
									required /><br>
								<br>
							</div>
							<div class="form-group">
								<input type="submit" id="addDoctorBtn" value="Add"
									class="btn btn-primary py-3 px-5" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="Footer.jsp"%>