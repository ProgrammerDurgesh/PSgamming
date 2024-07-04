package common;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class EmailConfig {
	  private static  String username="no-reply@playsmartgaming.com";
	    private static  String password="Shailesh Bhai:";
	    private static  String host="altar30.supremepanel30.com";
	    private static  String port="465";

	    public EmailConfig(String username, String password, String host, String port) {
	        this.username = username;
	        this.password = password;
	        this.host = host;
	        this.port = port;
	    }

	    public static void sendEmail(String to, String subject, String body) {
	        Properties props = new Properties();
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);
	        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        try {
	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(username));
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
	            message.setSubject(subject);
	            message.setText(body);
	            Transport.send(message);
	            System.out.println("Sent message successfully....");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }
	    }


}
