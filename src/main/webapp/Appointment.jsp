<%@page import="com.model.*"%>

<%@page import="java.util.Iterator"%>
<%@page import="com.connection.DbConnection"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%@ include file="header.jsp"%>


<%! DbConnection connectionObject=new DbConnection();
 	List<Integer>listArray=new ArrayList<Integer>();
 	List<String>namelist=new ArrayList<String>();
 	List<String>speclist=new ArrayList<String>();
 	List<Time>appTime=new ArrayList<Time>();
 	Time startTime=null,endTime=null;
 	String  a="",appdate="";
 	int userId=0,i=0;
 	String a1="hello";
 	%>



<div class="container">
	<h5 class="modal-title" align="center">Appointment</h5>
	<form action="Appointment1.jsp">
		<div class="col-md-6">
			<div class="form-group">
				<label for="appointment_date" class="text-black"> Search By
					Date</label> <input type="text" class="form-control" name="date"
					id="appointment_date" required>
			</div>
			<div class="form-group">
				<label for="appointment_dep" class="text-black"> Select Dep</label>
				<select class="form-control" name="appointment_dep"
					id="appointment_dep" required>
					<option value="">Select Dep</option>
					<%List<Object> deplist=connectionObject.getList("from Doctor_Department");
                		for(Iterator<Object> it=deplist.iterator();it.hasNext();){
                			Doctor_Department detail=(Doctor_Department)it.next();%>
					<option value="<%=detail.getDepartment_name() %>"><%=detail.getDepartment_name() %></option>
					<%} %>
				</select>
			</div>
			<input type="submit" value="Search" class="btn btn-primary py-3 px-5" />
		</div>
	</form>
</div>
<br>




<%@ include file="Footer.jsp"%>
