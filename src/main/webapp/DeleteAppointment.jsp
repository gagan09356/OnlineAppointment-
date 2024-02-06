<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="header.jsp"%>
<%!DbConnection con = new DbConnection();
	boolean flag = false;%>
</head>
<br>
<br>
<body>
	<%
		if (con.deleteAppointment("delete Appointment_Detail where appointment_id=:id ",
				Integer.parseInt(request.getParameter("id"))) > 0) {
			System.out.println("Sucess");
		} else
			System.out.println("not sucessfully deleted");
	%>
	<h3>Appointment sucessfully deleted</h3>
	<a class="btn btn-primary py-1 px-3" href="Welcome.jsp">Back To
		HomePage</a>
	<br>
	<br>
</body>
</html>
<%@include file="Footer.jsp"%>