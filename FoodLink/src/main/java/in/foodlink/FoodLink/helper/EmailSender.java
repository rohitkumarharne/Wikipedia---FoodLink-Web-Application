package in.foodlink.FoodLink.helper;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class EmailSender {

    public static void sendEmail(String to, String subject, String messageText) {
        // SMTP Configuration
        final String host = "smtp.gmail.com";
        final String username = "softdevrohit@gmail.com"; // Replace with your email
        final String password = "vpof xmxt gtmy vjip"; // Use an App Password

        // SMTP Properties
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");

        // Create Session
        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Create Message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(messageText);

            // Send Email
            Transport.send(message);
            System.out.println("Sent OTP successfully!");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

}
