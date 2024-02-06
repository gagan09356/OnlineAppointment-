<%@page import="com.model.Doctor_Detail"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%!DbConnection con=new DbConnection(); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table border="1"
			style="border: 10px solid black; align-self: center;">
			<tr style="color: black; background-color: white">
				<th>Doctor Name</th>
				<th>Doctor Specilization</th>
				<th>Doctor Experience</th>
				<th>Doctor Address</th>
				<th>Doctor Mail</th>
				<th>Doctor Mobile No.</th>
				<th>Edit Details</th>
			</tr>
			<%List<Object> getList=con.getList("from Doctor_Detail");
					for(Iterator<Object> iterator=getList.iterator();iterator.hasNext();){
					Doctor_Detail detail=(Doctor_Detail) iterator.next(); %>
			<tr style="color: black; background-color: white">
				<td><%=detail.getDoctor_name() %></td>
				<td><%=detail.getdoctor_specialization()%></td>
				<td><%=detail.getdoctor_experience() %></td>
				<td><%=detail.getDoctor_address() %></td>
				<td><%=detail.getDoctor_email() %></td>
				<td><%=detail.getDoctor_mobile() %></td>
				<td><a href="EditDoctor.jsp?id=<%=detail.getDoctor_id()%>"
					class="btn btn-primary py-1 px-1	">Edit Details</a></td>
			</tr>
			<%} %>

		</table>
	</div>



</body>
</html>
<%@ include file="Footer.jsp"%>
