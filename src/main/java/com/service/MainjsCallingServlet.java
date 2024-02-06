package com.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.connection.DbConnection;
import com.model.Doctor_Detail;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/callmainjs")
public class MainjsCallingServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //System.out.println("in servelt");
			
		    String action=request.getParameter("action");
		    System.out.println(action);
		    HttpSession session=request.getSession();
		    
		    //for register the user
		    if(action.equals("register")) {
		    	 String username=request.getParameter("user_name");
				    String mobile=request.getParameter("mobile_no");
				    String email=request.getParameter("email");
				    String password=request.getParameter("password");
				    String address=request.getParameter("address");
				    String confirm_password=request.getParameter("confirm_password");
				    System.out.println(username+mobile+email+password);
				    Register reg=new Register();
				    int i=reg.register(username,mobile,email,password,address,confirm_password);
				   if(i==1) {
					   response.getWriter().println(username+" sucessfully registered");
				   }
				   else if(i==2) {
					   response.getWriter().println("try again later");
				   }
				   else if(i==0) {
					   response.getWriter().println("password doesn't match");
				   }
				   else if(i==3) {
					   response.getWriter().println("User already exists");
				   }
		    }
		    
		    //for logging the user
		    
		    else if(action.equals("login")) {
		    	String email=request.getParameter("email");
		    	String password=request.getParameter("password");
		    	Login log=new Login();
		    	String name=log.userLogin(email, password);
		    	System.out.println(name+email+password);
		    	if(name.equals("wrong")) {
		    		response.getWriter().println(1);
		    	}
		    	else if(name.equals("enter")) {
		    		response.getWriter().println(2);
		    	}
		    	else {
		    	session.setAttribute("email",name);
		    	//System.out.println(session.getAttribute("email")==null);
		    	response.getWriter().println(3);
		    	//System.out.println("success");
		    	}
		    }
		    
		    //for logging the admin
		    else if(action.equals("adminLogin")) {
		    	System.out.println(action);
		    	String email=request.getParameter("email");
		    	String password=request.getParameter("password");
		    	AdminLogin adminLogin=new AdminLogin();
		    	String name=adminLogin.loginAsAdmin(email, password);
		    	System.out.println(name);
		    	if(name.equals("wrong")) {
		    		response.getWriter().println(1);
		    	}
		    	else if(name.equals("enter")) {
		    		response.getWriter().println(2);
		    	}
		    	else {
		    		session.setAttribute("email",name);
		    	response.getWriter().println(3);
		    	}
		    }
		    
		    
		    //adding department
		    else if(action.equals("addDepartment")) {
		    	System.out.println(action);
		    	AddDepartment addDepartment=new AddDepartment();
		    	int i=0;
		    	try {
					i=addDepartment.addingDepartment(request.getParameter("name"), request.getParameter("disc"));
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    	if(i==1)
		    		response.getWriter().println(1);
		    	else if(i==0)
		    		response.getWriter().println(0);
		    	else if(i==2)
		    		response.getWriter().println(2);
		    }
		    
		   
		    //For booking the Appointment
		    
		    else if(action.equals("appointment")) {
		    	System.out.println(request.getParameter("appTime"));
		    	Appointment appointment=new Appointment();
		    	int i = 0;
		    	java.util.Date appDate=null;
	        	 java.util.Date appTime=null;
	        	 Time time=null;
	        	 try {
					appDate= new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("appDate"));
					appTime= new SimpleDateFormat("hh:mm:ss").parse(request.getParameter("appTime"));
					time=new Time(appTime.getTime());
					System.out.println(appDate+",hello "+time);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					i = appointment.bookAppointment(request.getParameter("name"),request.getParameter("email"), request.getParameter("mobile"), Integer.parseInt(request.getParameter("doctorId")),appDate, time, session);
				} catch (NumberFormatException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		    	DbConnection con=new DbConnection();
		    	String doctormailid=null,doctorname=null;
		    	List doctormail=con.getInfo("from Doctor_Detail where doctor_id=:param", Integer.parseInt(request.getParameter("doctorId")));
    	 		for(Iterator it=doctormail.iterator();it.hasNext();) {
    	 			Doctor_Detail maildetail=(Doctor_Detail) it.next();
    	 			doctormailid=maildetail.getDoctor_email();
    	 			doctorname=maildetail.getDoctor_name();
    	 		}   	 
	        		try {
						if(i>0) {
							System.out.println("appointment book");
							String message="Mr/Ms '"+request.getParameter("name")+"' your appointment has been booked with Dr. '"+doctorname+"' on '"+request.getParameter("appDate")+"' time '"+request.getParameter("appTime")+"' at Redmic Hospital ";
							SendMail sendMail =new SendMail();
							sendMail.sendMail(request.getParameter("email"), message, doctormailid);
							response.getWriter().println(1);
						}
						else if(i==0) {
							response.getWriter().println(0);
						}
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		    }
		    
		    //change password
		    else if(action.equals("changePassword")) {
		    	ChangePassword changePassword=new ChangePassword();
		    	int i=changePassword.passwordChange(request.getParameter("email"),request.getParameter("new_password"),request.getParameter("old_password"));
		    	if(i==1) {
		    		System.out.println("password Changed");
					String message="Your Redmic Hospital account Password has been sucessfully changed ";
					SendMail sendMail =new SendMail();
					sendMail.sendPasswordChangeMail(request.getParameter("email"),message );
					System.out.println("after mail");
					session.setAttribute("email",null);
					response.getWriter().println("password changed sucessfully");
		    	}
		    	else if(i==0) {
		    		response.getWriter().println("Insert valid Information");
		    	}
		    }
		    
		    //forget Password
		    else if(action.equals("forgetPassword")) {
		    	ForgetPassword forgetPassword=new ForgetPassword();
		    	String NewPassword=forgetPassword.passwordForget(request.getParameter("email"));
		    	if(NewPassword!=null) {
		    		System.out.println("password Changed");
		    		SendMail mail=new SendMail();
		    		String message="Your Redmic Hospital account Password has been sucessfully changed to : "+NewPassword;
					SendMail sendMail =new SendMail();
					sendMail.sendPasswordChangeMail(request.getParameter("email"),message );
					response.getWriter().println("Your Redmic Hospital account Password has been sucessfully send on your registered mail id");
		    	}
		    	else
		    		response.getWriter().print("Enter your registered mail id");
		    }
		    
		    //update doctor details
		    else if(action.equals("updateDoctor")) {
		    	EditDoctor editDoctor= new EditDoctor();
		    	int i=editDoctor.doctorEdit(request.getParameter("name"), request.getParameter("spec"), request.getParameter("address"),Integer.parseInt(request.getParameter("experience")),request.getParameter("email"),request.getParameter("mobile"),Integer.parseInt(request.getParameter("id")));
		    	if(i==1) {
		    		System.out.println("password Changed");
					String message="Your Redmic Hospital account details has been sucessfully changed ";
					SendMail sendMail =new SendMail();
					sendMail.sendPasswordChangeMail(request.getParameter("email"),message );
					System.out.println("after mail");
					response.getWriter().println("Details changed sucessfully");
		    	}
		    	else if(i==0) {
		    	response.getWriter().println("try again later");
		    }
		}
		    //update user details
		    else if(action.equals("updateUser")) {
		    	EditUser editUser=new EditUser();
		    	int i=editUser.userEdit(request.getParameter("name"), request.getParameter("address"),request.getParameter("mobile"),Integer.parseInt(request.getParameter("id")));
		    	if(i==1) {
		    		System.out.println("password Changed");
					String message="Your Redmic Hospital account details has been sucessfully changed ";
					SendMail sendMail =new SendMail();
					sendMail.sendPasswordChangeMail(request.getParameter("email"),message );
					System.out.println("after mail");
					response.getWriter().println("Details changed sucessfully");
		    	}
		    	else if(i==0) {
		    	response.getWriter().println("try again later");
		    }
		    }
	}

}
