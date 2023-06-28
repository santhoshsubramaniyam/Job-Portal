package com.Vt.Arbiet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

@WebServlet("/mailToCandidate")
public class mailToCandidate extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/arbietNew";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "root";
    private static final String SMTP_HOST = "smtp.gmail.com";
    private static final int SMTP_PORT = 587;
    private static final String EMAIL_USERNAME = "santhoshkumar2902@gmail.com";
    private static final String EMAIL_PASSWORD = "czcgbclfceuuthdq";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String candidateName = request.getParameter("candidateName");
        String candidateEmail = request.getParameter("candidateEmail");
        String candidatePhone = request.getParameter("candidatePhone");
        String interviewDate = request.getParameter("interviewDate");
        String interviewStartTime = request.getParameter("interviewStartTime");
        String interviewDuration = request.getParameter("interviewDuration");
        String interviewProcess = request.getParameter("interviewProcess");
        
        String companyName = request.getParameter("companyName");
        String jobName = request.getParameter("jobName");
        
        String cId = request.getParameter("cId");
        String cEmail = request.getParameter("cEmail");

        // Save form data to the database
        boolean savedToDB = saveFormDataToDatabase(candidateName, candidateEmail, candidatePhone, interviewDate,interviewStartTime, interviewDuration, interviewProcess);

        // Send email
        boolean emailSent = sendEmail(candidateName, candidateEmail, candidatePhone, interviewDate,interviewStartTime, interviewDuration, interviewProcess, companyName , jobName);

        // Prepare response
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (savedToDB && emailSent) {
           
            out.println("<html><head>"); 
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
            out.println("</head><body>");
            out.println("<script>");
            out.println("Swal.fire({"); 
            out.println("  icon: 'success',");
            out.println("  title: 'Mail has been send Successfully',");
            out.println("  showConfirmButton: false,");
            out.println("  timer: 2500");
            out.println("})");
            out.println("</script>"); 
            out.println("</body></html>");
            
            response.setHeader("Refresh", "2; URL=candidateDetail.jsp?id="+cId+"&email="+cEmail);

        } else {
           
            
            out.println("<html><head>"); 
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
            out.println("</head><body>");
            out.println("<script>");
            out.println("Swal.fire({"); 
            out.println("  icon: 'error',");
            out.println("  title: 'Failed to send email. Please try again later.',");
            out.println("  showConfirmButton: false,");
            out.println("  timer: 2500");
            out.println("})");
            out.println("</script>"); 
            out.println("</body></html>");
            
            response.setHeader("Refresh", "2; URL=candidateDetail.jsp?id="+cId+"&email="+cEmail);
        }
    }

    private boolean saveFormDataToDatabase(String candidateName, String candidateEmail, String candidatePhone, String interviewDate, String interviewStartTime, String interviewDuration, String interviewProcess) {
    	
        try {
        	 Class.forName("com.mysql.cj.jdbc.Driver");
        	 Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            // Prepare the SQL statement
            String sql = "INSERT INTO mail (candidateName, candidateEmail, candidatePhone, interviewDate,interviewStartTime, interviewDuration, interviewProcess) VALUES (?, ?, ?, ?,?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);

            // Set the parameter values
            statement.setString(1, candidateName);
            statement.setString(2, candidateEmail);
            statement.setString(3, candidatePhone);
            statement.setString(4, interviewDate);
            statement.setString(5, interviewStartTime);
            statement.setString(6, interviewDuration);
            statement.setString(7, interviewProcess);

            // Execute the statement
            int rowsInserted = statement.executeUpdate();

            return rowsInserted > 0;
        } catch (Exception e ) {
            e.printStackTrace();
            // Handle database error
            return false;
        }
    }

    private boolean sendEmail(String candidateName, String candidateEmail, String candidatePhone, String interviewDate, String interviewStartTime, String interviewDuration, String interviewProcess, String companyName, String jobName) {
        // Configure email properties
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", SMTP_HOST);
        properties.put("mail.smtp.port", SMTP_PORT);

        // Create a session with authentication
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        try {
            // Create a new message
            MimeMessage mimeMessage = new MimeMessage(session);

            // Set the sender address
            mimeMessage.setFrom(new InternetAddress(EMAIL_USERNAME));

            // Set the recipient address
            mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(candidateEmail));

            // Set the subject
            mimeMessage.setSubject("Invitation to Interview - "+companyName+" for job position "+jobName+" - Reg,");

            // Create a MimeMultipart object
            MimeMultipart multipart = new MimeMultipart();

            // Create a MimeBodyPart for the HTML content
            MimeBodyPart htmlPart = new MimeBodyPart();
            String emailContent = "<!DOCTYPE html>\r\n"
            		+ "<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\"><head>\r\n"
            		+ "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n"
            		+ "  <meta name=\"viewport\" content=\"initial-scale=1.0\">\r\n"
            		+ "  <meta name=\"format-detection\" content=\"telephone=no\">\r\n"
            		+ "  <title>MOSAICO Responsive Email Designer</title>\r\n"
            		+ "  \r\n"
            		+ "  <style type=\"text/css\">\r\n"
            		+ "    body{ margin: 0; padding: 0; }\r\n"
            		+ "    img{ border: 0px; display: block; }\r\n"
            		+ "\r\n"
            		+ "    .socialLinks{ font-size: 6px; }\r\n"
            		+ "    .socialLinks a{\r\n"
            		+ "      display: inline-block;\r\n"
            		+ "    }\r\n"
            		+ "\r\n"
            		+ "    .long-text p{ margin: 1em 0px; }\r\n"
            		+ "    .long-text p:last-child{ margin-bottom: 0px; }\r\n"
            		+ "    .long-text p:first-child{ margin-top: 0px; }\r\n"
            		+ "  </style>\r\n"
            		+ "  <style type=\"text/css\">\r\n"
            		+ "    /* yahoo, hotmail */\r\n"
            		+ "    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{ line-height: 100%; }\r\n"
            		+ "    .yshortcuts a{ border-bottom: none !important; }\r\n"
            		+ "    .vb-outer{ min-width: 0 !important; }\r\n"
            		+ "    .RMsgBdy, .ExternalClass{\r\n"
            		+ "      width: 100%;\r\n"
            		+ "      background-color: #3f3f3f;\r\n"
            		+ "      background-color: #3f3f3f}\r\n"
            		+ "\r\n"
            		+ "    /* outlook/office365 add buttons outside not-linked images and safari have 2px margin */\r\n"
            		+ "    [o365] button{ margin: 0 !important; }\r\n"
            		+ "\r\n"
            		+ "    /* outlook */\r\n"
            		+ "    table{ mso-table-rspace: 0pt; mso-table-lspace: 0pt; }\r\n"
            		+ "    #outlook a{ padding: 0; }\r\n"
            		+ "    img{ outline: none; text-decoration: none; border: none; -ms-interpolation-mode: bicubic; }\r\n"
            		+ "    a img{ border: none; }\r\n"
            		+ "\r\n"
            		+ "    @media screen and (max-width: 600px) {\r\n"
            		+ "      table.vb-container, table.vb-row{\r\n"
            		+ "        width: 95% !important;\r\n"
            		+ "      }\r\n"
            		+ "\r\n"
            		+ "      .mobile-hide{ display: none !important; }\r\n"
            		+ "      .mobile-textcenter{ text-align: center !important; }\r\n"
            		+ "\r\n"
            		+ "      .mobile-full{ \r\n"
            		+ "        width: 100% !important;\r\n"
            		+ "        max-width: none !important;\r\n"
            		+ "      }\r\n"
            		+ "    }\r\n"
            		+ "    /* previously used also screen and (max-device-width: 600px) but Yahoo Mail doesn't support multiple queries */\r\n"
            		+ "  </style>\r\n"
            		+ "  <style type=\"text/css\">\r\n"
            		+ "    \r\n"
            		+ "    #ko_textBlock_1 .links-color a, #ko_textBlock_1 .links-color a:link, #ko_textBlock_1 .links-color a:visited, #ko_textBlock_1 .links-color a:hover{\r\n"
            		+ "      color: #3f3f3f;\r\n"
            		+ "      color: #3f3f3f;\r\n"
            		+ "      text-decoration: underline\r\n"
            		+ "    }\r\n"
            		+ "    \r\n"
            		+ "    # .links-color a, # .links-color a:link, # .links-color a:visited, # .links-color a:hover{\r\n"
            		+ "      color: #cccccc;\r\n"
            		+ "      color: #cccccc;\r\n"
            		+ "      text-decoration: underline\r\n"
            		+ "    }\r\n"
            		+ "    \r\n"
            		+ "    #ko_imageBlock_1 a, #ko_imageBlock_1 a:link, #ko_imageBlock_1 a:visited, #ko_imageBlock_1 a:hover{\r\n"
            		+ "      color: #3f3f3f;\r\n"
            		+ "      color: #3f3f3f;\r\n"
            		+ "      text-decoration: underline\r\n"
            		+ "    }\r\n"
            		+ "    </style>\r\n"
            		+ "  \r\n"
            		+ "</head>\r\n"
            		+ "<!--[if !(gte mso 16)]-->\r\n"
            		+ "<body bgcolor=\"#3f3f3f\" text=\"#919191\" alink=\"#cccccc\" vlink=\"#cccccc\" style=\"margin: 0; padding: 0; background-color: #3f3f3f; color: #919191;\"><!--<![endif]--><center>\r\n"
            		+ "\r\n"
            		+ "  \r\n"
            		+ "\r\n"
            		+ "  <table role=\"presentation\" class=\"vb-outer\" width=\"100%\" cellpadding=\"0\" border=\"0\" cellspacing=\"0\" bgcolor=\"#bfbfbf\" id=\"ko_imageBlock_1\" style=\"background-color: #bfbfbf\">\r\n"
            		+ "      <tbody><tr><td class=\"vb-outer\" align=\"center\" valign=\"top\" style=\"padding-left: 9px; padding-right: 9px; font-size: 0\">\r\n"
            		+ "      <!--[if (gte mso 9)|(lte ie 8)]><table role=\"presentation\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"570\"><tr><td align=\"center\" valign=\"top\"><![endif]--><!--\r\n"
            		+ "      --><div style=\"margin: 0 auto; max-width: 570px; -mru-width: 0px\"><table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" width=\"570\" class=\"vb-container\" style=\"border-collapse: separate; width: 100%; background-color: #ffffff; mso-cellspacing: 0px; border-spacing: 0px; max-width: 570px; -mru-width: 0px\">\r\n"
            		+ "        \r\n"
            		+ "        <tbody><tr><td width=\"100%\" valign=\"top\" align=\"center\" class=\"links-color\"><!--[if (lte ie 8)]><div style=\"display: inline-block; width: 570px; -mru-width: 0px\"><![endif]--><img border=\"0\" hspace=\"0\" align=\"center\" vspace=\"0\" width=\"570\" class=\"mobile-full\" style=\"border: 0px; display: block; vertical-align: top; height: auto; margin: 0 auto; color: #3f3f3f; font-size: 13px; font-family: Arial, Helvetica, sans-serif; width: 100%; max-width: 570px; height: auto;\" src=\"https://mosaico.io/srv/f-jiqerq4/img?src=https%3A%2F%2Fmosaico.io%2Ffiles%2Fjiqerq4%2FInterveiw-Call-Letter-main.png&amp;method=resize&amp;params=570%2Cnull\"><!--[if (lte ie 8)]></div><![endif]--></td></tr>\r\n"
            		+ "      \r\n"
            		+ "      </tbody></table></div><!--\r\n"
            		+ "    --><!--[if (gte mso 9)|(lte ie 8)]></td></tr></table><![endif]-->\r\n"
            		+ "      \r\n"
            		+ "    </td></tr>\r\n"
            		+ "    </tbody></table><table role=\"presentation\" class=\"vb-outer\" width=\"100%\" cellpadding=\"0\" border=\"0\" cellspacing=\"0\" bgcolor=\"#bfbfbf\" id=\"ko_textBlock_1\" style=\"background-color: #bfbfbf\">\r\n"
            		+ "      <tbody><tr><td class=\"vb-outer\" align=\"center\" valign=\"top\" style=\"padding-left: 9px; padding-right: 9px; font-size: 0\">\r\n"
            		+ "      <!--[if (gte mso 9)|(lte ie 8)]><table role=\"presentation\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"570\"><tr><td align=\"center\" valign=\"top\"><![endif]--><!--\r\n"
            		+ "      --><div style=\"margin: 0 auto; max-width: 570px; -mru-width: 0px\"><table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"18\" bgcolor=\"#ffffff\" width=\"570\" class=\"vb-container\" style=\"border-collapse: separate; width: 100%; background-color: #ffffff; mso-cellspacing: 18px; border-spacing: 18px; max-width: 570px; -mru-width: 0px\">\r\n"
            		+ "        \r\n"
            		+ "        <tbody><tr><td class=\"long-text links-color\" width=\"100%\" valign=\"top\" align=\"left\" style=\"font-weight: normal; color: #3f3f3f; font-size: 13px; font-family: Arial, Helvetica, sans-serif; text-align: left; line-height: normal\"><p style=\"margin: 1em 0px; margin-top: 0px;\">Dear&nbsp; "+candidateName+"</p>\r\n"
            		+ "<p style=\"margin: 1em 0px;\">Thank you for applying to "+companyName+".Your application for the "+jobName+" postion stood out to us and we would like to invite you for an interview at our office to get to know you a bit better.</p>\r\n"
            		+ "<p style=\"margin: 1em 0px;\">Your interview has been scheduled for "+interviewDate+" "+interviewStartTime+" duration: "+interviewDuration+" at "+companyName+" office "+interviewProcess+"</p>\r\n"
            		+ "<p style=\"margin: 1em 0px;\">Sincerely ,</p>\r\n"
            		+ "<p style=\"margin: 1em 0px; margin-bottom: 0px;\">ARBIET</p></td></tr>\r\n"
            		+ "      \r\n"
            		+ "      </tbody></table></div><!--\r\n"
            		+ "    --><!--[if (gte mso 9)|(lte ie 8)]></td></tr></table><![endif]-->\r\n"
            		+ "    </td></tr>\r\n"
            		+ "    </tbody></table>\r\n"
            		
            		+ "    \r\n"
            		+ "</center><!--[if !(gte mso 16)]--></body><!--<![endif]--></html>";
            
         // Replace placeholders with actual values
            emailContent = emailContent.replace("{candidateName}", candidateName);
            emailContent = emailContent.replace("{companyName}", companyName);
            emailContent = emailContent.replace("{jobName}", jobName);
            emailContent = emailContent.replace("{interviewDate}", interviewDate);
            emailContent = emailContent.replace("{interviewStartTime}", interviewStartTime);
            emailContent = emailContent.replace("{interviewDuration}", interviewDuration);
            emailContent = emailContent.replace("{interviewProcess}", interviewProcess);

            htmlPart.setContent(emailContent, "text/html");

            // Add the MimeBodyPart to the MimeMultipart
            multipart.addBodyPart(htmlPart);

            // Set the content of the message to the MimeMultipart
            mimeMessage.setContent(multipart);

            // Send the message
            Transport.send(mimeMessage);

            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            // Handle email sending error
            return false;
        }
    }
}
