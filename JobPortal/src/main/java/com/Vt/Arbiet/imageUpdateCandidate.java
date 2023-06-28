package com.Vt.Arbiet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Types;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class imageUpdateEmployer
 */
@WebServlet("/imageUpdateCandidate")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class imageUpdateCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		  String employerMail = request.getParameter("maill");
	        
	        // Get the uploaded file
	        Part filePart = request.getPart("employerImage");
	        InputStream inputStream = null;
	        if (filePart != null) {
	            // Get the file input stream and file name
	            inputStream = filePart.getInputStream();
	        }

	        Connection con = null;
	        PreparedStatement stmt = null;
	       
	        PrintWriter out=response.getWriter();
	     
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");
	            stmt = con.prepareStatement("UPDATE addCandidate SET candidateProfile=? WHERE candidateEmail=?");
	            
	            if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
	            	stmt.setBlob(1, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                	stmt.setNull(1, Types.BLOB);
                }
	            stmt.setString(2, employerMail);
	          
	            
	            int rowsUpdated = stmt.executeUpdate();
	            
	            stmt.close();
	            con.close();
	            
	            response.setContentType("text/html");
                out.println("<html><head>"); 
	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
	            out.println("</head><body>");
	            out.println("<script>");
	            out.println("Swal.fire({"); 
	            out.println("  icon: 'success',");
	            out.println("  title: 'Updated Successfully..!!',");
	            out.println("  showConfirmButton: false,");
	            out.println("  timer: 2000");
	            out.println("})");
	            out.println("</script>"); 
	            out.println("</body></html>");
	            
	            response.setHeader("Refresh", "2; URL=profileCandidate.jsp?email="+employerMail);
	        

	          
	          
	        } catch (Exception e) {
	        	e.printStackTrace();
	        	response.setContentType("text/html");
	              out.print("{\"status\":\"error\",\"message\":\"User details could not be updated\"}");
	            
                  out.println("<html><head>"); 
  	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
  	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
  	            out.println("</head><body>");
  	            out.println("<script>");
  	            out.println("Swal.fire({"); 
  	            out.println("  icon: 'error',");
  	            out.println("  title: 'Update Failed',");
  	            out.println("  showConfirmButton: false,");
  	            out.println("  timer: 2000");
  	            out.println("})");
  	            out.println("</script>"); 
  	            out.println("</body></html>");
  	            
  	          response.setHeader("Refresh", "2; URL=profileCandidate.jsp?email="+employerMail);

	            
	        } 
		     
	    
	    }

}
