package com.service;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.List;

import com.connection.DbConnection;

public class ForgetPassword {
		public String passwordForget(String email) {
			String NewPaswword=null;
			DbConnection connection=new DbConnection();
			List<Object> email_id = connection.getDetail("select user_email_id from User_Info where user_email_id=:p", email);
			System.out.println(email_id.get(0));
			if(email.equals(email_id.get(0))) {
				SendMail mail=new SendMail();
				String password=mail.getAlphaNumericString();
				PasswordEncription encription=new PasswordEncription();
				byte[] salt=null;
				try {
					salt=encription.getSalt();
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (NoSuchProviderException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String encriptedPassword=encription.getSecurePassword(password, salt);
				System.out.println(encriptedPassword);
				
				if(connection.updatePassword(email, encriptedPassword,salt)>0)
					NewPaswword=password;
				else
					NewPaswword=null;
				return NewPaswword;
				}
			else
				return NewPaswword;
		}
}
