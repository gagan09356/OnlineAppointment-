package com.service;

import java.util.Iterator;
import java.util.List;

import com.connection.DbConnection;

import com.model.*;

public class Login {
	 public String userLogin(String email,String password) {
		DbConnection obj=new DbConnection();
		String name = null;
   	  if(email!=null && password!=null){
			/*
			 * User_Info info=new User_Info(); info.setuser_email_id(email);
			 * info.setUser_password(password);
			 */
   		byte[] salt=null;
   		
   		List<Object> list;
   		PasswordEncription encription= new PasswordEncription();
   		System.out.println(email);
   		List<Object> saltList=obj.getDetail("from User_Info where user_email_id=:p",email);
   			for(Iterator<Object> iterator=saltList.iterator();iterator.hasNext();) {
   				User_Info info=  (User_Info)iterator.next();
   				salt=info.getUser_password_salt();
   				}
   			//System.out.println(salt+" from database");
   		String regeneratedPassowrdToVerify=encription.getSecurePassword(password, salt);
   		//System.out.println(regeneratedPassowrdToVerify+" regenrated pass");
   		String query="from User_Info where user_email_id=:email and user_password=:password";
   		list=obj.fetch(email,regeneratedPassowrdToVerify,query);
   		if(!list.isEmpty()){
   			for(Iterator<Object> iterator=list.iterator();iterator.hasNext();) {
   				User_Info infoUser=(User_Info) iterator.next();
   				if((infoUser.getUser_email_id().equals(email))&&(infoUser.getUser_password().equals(regeneratedPassowrdToVerify))){
   					 name=infoUser.getUser_email_id();
   					return name;
   			}
   		}
   	}
   		else
   			//System.out.println("wrong username and password");
   			name="wrong";
   			return name;
   			}
   		 		
   	  else
   		  //System.out.println("enter the username and password");
   	  name="enter";
   	  return name;
	 }
}
