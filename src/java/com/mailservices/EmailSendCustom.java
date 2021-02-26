/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mailservices;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ARPIT-PATEL
 */
public class EmailSendCustom {
    
 public static boolean sendMail(String msg,String sendTo,String subject) {
     String host = "smtp.gmail.com";
                String port = "587";
                final String useremail = "arpitpatel1345@gmail.com";//change accordingly  
                final String password = "arpit@8401997730";//change accordingly  

                //  String to="sonoojaiswal1987@gmail.com";//change accordingly  
                //Get the session object  
                Properties properties = new Properties();
                properties.put("mail.smtp.host", host);
                properties.put("mail.smtp.port", port);
                properties.put("mail.smtp.auth", "true");
                properties.put("mail.smtp.starttls.enable", "true");

                /* Properties props = new Properties();  
				   props.put("mail.smtp.host",host);  
				   props.put("mail.smtp.auth", "true");  
                 */
                javax.mail.Session session = javax.mail.Session.getInstance(properties,
                        new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(useremail, password);
                    }
                });
                		session.setDebug(true);
                //Compose the message  
                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(useremail));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(sendTo));
                    message.setSubject(subject);
                    message.setText(msg);
                    //send the message  
                    Transport.send(message);
                    return true;

                } catch (MessagingException e) {
                    e.printStackTrace();
                    return false;
                }
 }
}
