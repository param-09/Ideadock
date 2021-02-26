package com.mailservices;
import java.net.*;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class ReigstrationMail {

	 public static boolean sendEmail(String message,String to) {
		String host="smtp.gmail.com";
		String port="465";
		Properties prop=System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", host);
		prop.put("mail.smtp.auth","true");
		prop.put("mail.smtp.user", "arpitpatel1345@gmail.com");
		prop.put("mail.smtp.password","arpit@8401997730");
		prop.put("mail.smtp.port",port);
		prop.put("mail.smtp.socketFactory.port", port);
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		prop.put("mail.smtp.socketFactory.fallback", "false");
		Session session=Session.getDefaultInstance(prop, null);
		session.setDebug(true);
		MimeMessage mimeMessage=new MimeMessage(session);
		try{
		mimeMessage.setFrom(new InternetAddress("arpitpatel1345@gmail.com"));
		//Now Get The Address Of Reciepents
		InternetAddress toAddresses=new InternetAddress();
		
			toAddresses=new InternetAddress(to);
		
		//Now add all toAddress elements 
		//mimeMessage
		
			mimeMessage.addRecipient(RecipientType.TO, toAddresses);
		
		//add Subject TO mimeMessage
		mimeMessage.setSubject("IdeaDockSupport");
		//Set Message TO mimeMessage
		mimeMessage.setText(message);
		Transport transport=session.getTransport("smtp");
		transport.connect(host,"arpitpatel1345@gmail.com","arpit@8401997730");
		transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
		transport.close();
		return true;
		}
		catch(MessagingException me){
			me.printStackTrace();
		}
		
	 return false;
	 }
	}
