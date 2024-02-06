<%@page import="com.model.User_Info"%>
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
	<div class="container">
		<table border="1"
			style="border: 10px solid black; align-self: center;">
			<tr style="color: black; background-color: white">
				<th>User Name</th>
				<th>User Mail</th>
				<th>User Mobile No.</th>
				<th>User Address</th>
			</tr>
			<%
				List<Object> getList = con.getList("from User_Info");
				for (Iterator<Object> iterator = getList.iterator(); iterator.hasNext();) {
					User_Info detail = (User_Info) iterator.next();
			%>
			<tr style="color: black; background-color: white">
				<td><%=detail.getUser_name()%></td>
				<td><%=detail.getUser_email_id()%></td>
				<td><%=detail.getUser_mobile_no()%></td>
				<td><%=detail.getUser_address()%></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>



</body>
</html>
<%@ include file="Footer.jsp"%>
