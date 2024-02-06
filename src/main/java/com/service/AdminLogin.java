package com.service;

import java.util.Iterator;
import java.util.List;

import com.connection.DbConnection;
import com.model.Admin;

public class AdminLogin {
	 public String loginAsAdmin(String email,String password) {
			DbConnection obj=new DbConnection();
			String name;
	   	  if(email!=null && password!=null){
	   		// Admin admin=new Admin();
	   		List<Object> list;
	   		String query="from Admin where admin_email_id=:email and admin_password=:password";
	   		list=obj.fetch(email,password,query);
	   		if(!list.isEmpty()){
	   			for(Iterator<Object> iterator=list.iterator();iterator.hasNext();) {
	   				Admin admin2=(Admin) iterator.next();
	   				System.out.println(admin2.getAdmin_email_id()+","+admin2.getAdmin_password()); 
	   			if((admin2.getAdmin_email_id().equals(email))&&(admin2.getAdmin_password().equals(password))){
	   					 name=admin2.getAdmin_name();
	   					return name;
	   			}
	   		}
	   	}
	   		else
	   			System.out.println("wrong username and password");
	   			name="wrong";
	   			return name;
	   			}
	   		 		
	   	  else
	   		  System.out.println("enter the username and password");
	   	  name="enter";
	   	  return name;
		 }
}
