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



<%!DbConnection con = new DbConnection();
	List<String> namelist = new ArrayList<String>();
	List<String> speclist = new ArrayList<String>();
	List<Integer> idlist = new ArrayList<Integer>();
	List<Time> appTime = new ArrayList<Time>();
	List<Time> startTimeList = new ArrayList<Time>();
	List<Time> endTimeList = new ArrayList<Time>();
	List<Object> timelist = new ArrayList<Object>();
	Time startTime = null, endTime = null;
	int userId = 0, deparmentId = 0;
	String appdate = "";%>
<%
	appdate = request.getParameter("date");
	if (request.getParameter("date") != null) {
		String email = session.getAttribute("email").toString();
		System.out.println(email);
		String userQuery = " from User_Info where user_name=:p";

		List<Object> list = con.getDetail(userQuery, email);
		for (Iterator<Object> iterator = list.iterator(); iterator.hasNext();) {
			User_Info infoUser = (User_Info) iterator.next();
			userId = infoUser.getUser_id();
			System.out.println(userId);
		}
		appdate = request.getParameter("date");
		Date date = new SimpleDateFormat("MM/dd/yyyy").parse(appdate);
		SimpleDateFormat outFormat = new SimpleDateFormat("EEEE");
		String dayName = outFormat.format(date);
		List<Object> deplist = con.getDetail("from Doctor_Department where department_name =:p",
				request.getParameter("appointment_dep"));
		for (Iterator<Object> iterator = deplist.iterator(); iterator.hasNext();) {
			Doctor_Department dep = (Doctor_Department) iterator.next();
			deparmentId = dep.getDoctor_department_id();

		}

		String doctorQuery = " from Doctor_Schedule_Day where " + dayName + "=:p";
		List<Object> newList = con.getDetail(doctorQuery, "p");
		for (Iterator<Object> iterator = newList.iterator(); iterator.hasNext();) {
			Doctor_Schedule_Day schedule = (Doctor_Schedule_Day) iterator.next();
			if (deparmentId == schedule.getDoctor_Schedule().getDoctor_Detail().getDoctor_department()
					.getDoctor_department_id()) {
				System.out.println(schedule.getDoctor_Schedule().getDoctor_Detail().getDoctor_name());
				idlist.add(schedule.getDoctor_Schedule().getDoctor_Detail().getDoctor_id());
				namelist.add(schedule.getDoctor_Schedule().getDoctor_Detail().getDoctor_name());
				speclist.add(schedule.getDoctor_Schedule().getDoctor_Detail().getdoctor_specialization());
				startTimeList.add(schedule.getDoctor_Schedule().getTime_start());
				endTimeList.add(schedule.getDoctor_Schedule().getTime_end());
			}
		}

		System.out.println(namelist.size());
		for (int i = 0; i < namelist.size(); i++) {
			//System.out.println(namelist.get(i)+","+speclist.get(i)+","+idlist.get(i)+","+namelist.size()+","+i);
%>
<div class="container">
	<form action="Appointment2.jsp" id="<%=i%>">
		<img src="images/person_2.jpg" height="70px" width="70px"
			style="margin-left: 46%; margin-right: 25%">
		<h3 align="center"><%=namelist.get(i)%></h3>
		<h6 align="center"><%=speclist.get(i)%></h6>
		<br>


		<%
			timelist = con.getInfo("select appointment_time from Appointment_Detail  where doctor_id=:param",
							idlist.get(i));
					startTime = startTimeList.get(i);
					endTime = endTimeList.get(i);
		%>




		<div class="container">
			<table>
				<tr>
					<%
						while ((startTime.equals(endTime)) || (startTime.before(endTime))) {
					%>
					<td id="<%=startTime%><%=i%>" style="padding-right: 20px;"
						onclick="timeClick(this.id,<%=i%>)">
						<%
							appTime.add(startTime);
										if (!timelist.contains(startTime)) {
						%> <a id="time1" href="#"><%=startTime%></a> <%
 	}
 %>
					</td>
					<%
						java.sql.Time myTime = java.sql.Time.valueOf(startTime.toString());
									LocalTime localtime = myTime.toLocalTime();
									localtime = localtime.plusMinutes(45);
									startTime = Time.valueOf(localtime);
									System.out.println(startTime);
								}
					%>
				</tr>
			</table>
			<input type="text" id="<%=i%><%=i%>" name="time" class="c5" value=" "
				readonly> <input type="text" id="date" name="date"
				value="<%=appdate%>" readonly> <input type="submit"
				value="book" class="btn btn-primary py-3 px-5" /> <input
				type="hidden" name="doc_id" value="<%=idlist.get(i)%>" />
		</div>

	</form>
</div>
<br>
<%
	}
	}
	namelist.clear();
	speclist.clear();
	idlist.clear();
	appTime.clear();
%>

<script>
		function timeClick(id,i){
				var text=id;
         		var tid = '#'+i+''+i; 
         		$( tid ).val(text.substring(0,8));         		
         	}
	</script>

<%@ include file="Footer.jsp"%>

