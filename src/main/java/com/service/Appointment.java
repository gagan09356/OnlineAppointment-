package com.service;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import com.connection.DbConnection;

import com.model.*;

public class Appointment  {
	 public int bookAppointment(String name,String email,String mobile,int doctor_id, java.util.Date appDate, Time time,HttpSession session) throws IOException, ServletException, SQLException{
		 	
		 			com.connection.DbConnection con=new DbConnection();
	        	 //	String doctormailid=null,doctorname=null;
	        	 	Appointment_Detail detail=new Appointment_Detail();
	        	 	detail.setPatient_name(name);
	        	 	detail.setPatient_email(email);
	        	 	detail.setPatient_mobile(mobile);
	        	 	detail.setAppointment_date(appDate);
	        	 	Doctor_Detail doctor_Detail=new Doctor_Detail();
	        	 	doctor_Detail.setDoctor_id(doctor_id);
	        	 	detail.setDoctor_Detail(doctor_Detail);
	        	 	detail.setAppointment_time(time);
	        	 	//System.out.println(session.getAttribute("email").toString());
	        	 	User_Info user_Info=new User_Info();
	        	 	int userId=0;
	        	 	List<Object> userIdList=con.getDetail("select user_id from User_Info where user_email_id=:p",session.getAttribute("email").toString());
	        	 	for(Iterator<Object> it=userIdList.iterator();it.hasNext();) {
	        	 		 userId=(Integer) it.next();
	        	 		 user_Info.setUser_id(userId);
	        	 		 System.out.println(user_Info+" user object");
	        	 	}
	        	 	detail.setUser_Info(user_Info);
	        	 	
	        	 	int i=con.register(detail);
	        	 		return i;
	         } 
}
