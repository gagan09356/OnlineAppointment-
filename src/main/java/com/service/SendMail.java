package com.service;
import com.sun.mail.smtp.SMTPTransport;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.Date;
import java.util.Properties; 


public class SendMail  {
	
	
	// for example, smtp.mailgun.org
  static String SMTP_SERVER = "smtp.gmail.com";
   static String USERNAME = "royalinn44@gmail.com";
   static String PASSWORD = "Royal#123";

   static String EMAIL_FROM ="royalinn44@gmail.com";
   

  static String EMAIL_SUBJECT, EMAIL_TO,EMAIL_TO_CC,EMAIL_TEXT= "Test Send Email via SMTP";
  
    
    
	public void sendMail(String emailTo,String emailText,String emailToCC) {
		//System.out.println("in mail module");
		//System.out.println(req.getAttribute("usermail"));
		EMAIL_TO=(String) emailTo;
		//EMAIL_TO="rahul9221r7@gmail.com";
		EMAIL_SUBJECT="Appointment Book";
		EMAIL_TEXT=(String)emailText;
		EMAIL_TO_CC=(String) emailToCC;
    	System.out.println(EMAIL_TO+","+ EMAIL_SUBJECT +","+EMAIL_TEXT+","+EMAIL_TO_CC);
       // Properties prop = System.getProperties();
    	System.setProperty("https.protocols", "TLSv1,TLSv1.1,TLSv1.2");
    	
    	Properties prop =new Properties();
        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
       prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
       prop.put("mail.smtp.port", "587"); // default port 25

        Session session = Session.getInstance(prop, null);
        Message msg = new MimeMessage(session);

        try {
		
			// from
            msg.setFrom(new InternetAddress(EMAIL_FROM));

			// to 
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(EMAIL_TO, false));

			// cc
			
			  msg.setRecipients(Message.RecipientType.BCC,
			  InternetAddress.parse(EMAIL_TO_CC, false));
			 

			// subject
            msg.setSubject(EMAIL_SUBJECT);
			
			// content 
            msg.setText(EMAIL_TEXT);
			
            msg.setSentDate(new Date());

			// Get SMTPTransport
            SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
			
			// connect
            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
			
			// send
            t.sendMessage(msg, msg.getAllRecipients());

            System.out.println("Response: " + t.getLastServerResponse());

            t.close();

        } catch (MessagingException e) {
            e.printStackTrace();
        }


    }
	
	public void sendPasswordChangeMail(String emailTo,String emailText) {
		EMAIL_TO=(String) emailTo;
		EMAIL_SUBJECT="Password Changed";
		EMAIL_TEXT=(String)emailText;
    	
    	System.out.println(EMAIL_TO+","+ EMAIL_SUBJECT +","+EMAIL_TEXT);
       // Properties prop = System.getProperties();
    	System.setProperty("https.protocols", "TLSv1,TLSv1.1,TLSv1.2");
    	
    	Properties prop =new Properties();
        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
       prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
       prop.put("mail.smtp.port", "587"); // default port 25

        Session session = Session.getInstance(prop, null);
        Message msg = new MimeMessage(session);

        try {
		
			// from
            msg.setFrom(new InternetAddress(EMAIL_FROM));

			// to 
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(EMAIL_TO, false));

			// cc
          /*  msg.setRecipients(Message.RecipientType.CC,
                    InternetAddress.parse(EMAIL_TO_CC, false));*/

			// subject
            msg.setSubject(EMAIL_SUBJECT);
			
			// content 
            msg.setText(EMAIL_TEXT);
			
            msg.setSentDate(new Date());

			// Get SMTPTransport
            SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
			
			// connect
            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
			
			// send
            t.sendMessage(msg, msg.getAllRecipients());

            System.out.println("Response: " + t.getLastServerResponse());

            t.close();

        } catch (MessagingException e) {
            e.printStackTrace();
        }


    }
	
	static public String getAlphaNumericString() 
	{ 
		// chose a Character random from this String 
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		+ "0123456789"
		+ "abcdefghijklmnopqrstuvxyz"; 
		
		// create StringBuffer size of AlphaNumericString 
		StringBuilder sb = new StringBuilder(); 
		
		for (int i = 0; i <10; i++) { 
		
			// generate a random number between 
			// 0 to AlphaNumericString variable length 
			int index = (int)(AlphaNumericString.length() * Math.random()); 
			
			// add Character one by one in end of sb 
			sb.append(AlphaNumericString .charAt(index)); 
		} 
		return sb.toString(); 
	} 
}
