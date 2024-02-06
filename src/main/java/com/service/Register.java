package com.service;



import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.SQLException;
import java.util.List;

import com.connection.DbConnection;
import com.model.*;

public class Register{
	
	public int register(String username,String mobile,String email,String password,String address,String confirm_password) {
		int i=0;
		if(password.equals(confirm_password)) {
			DbConnection obj=new DbConnection();
		    	//System.out.println("password enterd correct");
			List<Object> usernameList=obj.getDetail("select user_name from User_Info where user_email_id=:p", email);
			System.out.println(usernameList.isEmpty());
			if(usernameList.isEmpty()) {
					System.out.println("in maiin if");
					PasswordEncription encription=new PasswordEncription();
					byte[] salt = null;
					try {
						salt = encription.getSalt();
					} catch (NoSuchAlgorithmException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (NoSuchProviderException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					String securePassword =encription.getSecurePassword(password, salt);
					//System.out.println(securePassword);
		    	User_Info info=new User_Info(username,mobile,email,securePassword,address,salt);
		    	try {
					if(obj.register(info)>0){
						System.out.println("sucessful");
						 i=1;
						}
					else{
						System.out.println("try agian later");
						i=2;
					}
				}
		    	catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    	System.out.println(i);
		    	return i;
			}
		 else {
			 System.out.println(i);
			 return i=3;
		 }
		}
		else
		return i;
					
		}
			
	}



