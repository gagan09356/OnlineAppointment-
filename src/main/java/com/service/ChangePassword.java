package com.service;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Iterator;
import java.util.List;

import com.connection.DbConnection;
import com.model.User_Info;

public class ChangePassword {
		int i=0;
		public int passwordChange(String email,String newPassword,String oldpassword) {
			DbConnection dbConnection= new DbConnection();
			byte[] salt=null;
			String databasePassword=null;
	   		PasswordEncription encription= new PasswordEncription();
	   		System.out.println(email);
	   		List<Object> saltList=dbConnection.getDetail("from User_Info where user_email_id=:p",email);
   			for(Iterator<Object> iterator=saltList.iterator();iterator.hasNext();) {
   				User_Info info=  (User_Info)iterator.next();
   				salt=info.getUser_password_salt();
   				databasePassword=info.getUser_password();}
	   			
	   			String verifyOldPassword=encription.getSecurePassword(oldpassword, salt);

		   		
		   			System.out.println(verifyOldPassword+"  "+databasePassword+"  "+oldpassword+" this is old password");
		   			System.out.println(verifyOldPassword.equals(databasePassword));
		   			if(verifyOldPassword.equals(databasePassword)) {
		   					byte[] newsalt = null;
							try {
								newsalt = encription.getSalt();
							} catch (NoSuchAlgorithmException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (NoSuchProviderException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
		   					String newPassword_1=encription.getSecurePassword(newPassword, newsalt);
		   					System.out.println(newPassword_1);
		   				if(dbConnection.updatePassword(email,newPassword_1,newsalt)>0){
		   						i=1;
		   						System.out.println(i);
		   					}
		   					else{
		   						i=0;
		   					}
		   					return i;
		   				}
		   				else {
		   					return i;
		   				}
		   			}
}
