
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<div><h1>Add Departments</h1></div>
<div class="container">
    <div class="row d-md-flex justify-content-end">
    	<div class="col-md-8">
    		<div class="row">
				<div class="col-md-lg-12">	
					<div>
					  <form>
					  <div class="form-group">
						<input type="text" placeholder="DepartmentName" id="d_name" size="35" required/><br><br>
						</div>
						<div class="form-group">
						<input type="text" placeholder="DepartmentDiscription" id="d_disc" size="35" required/><br><br>
						</div>
						<!-- <input type="text" placeholder="image" name="d_image"/> -->
						<div class="form-group">
                			<input type="button" id="addDepartment" value="Add" class="btn btn-primary py-3 px-5"/>
               			</div>
					</form>
				</div>
			</div>
		 </div>
	 </div>
 </div>
 </div>

<%@include file="Footer.jsp" %>