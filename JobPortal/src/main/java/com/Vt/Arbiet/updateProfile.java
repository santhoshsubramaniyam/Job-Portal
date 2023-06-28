package com.Vt.Arbiet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateProfile
 */
@WebServlet("/updateProfile")
public class updateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	       String candidateFName = request.getParameter("candidateFName");
	        String candidateLName = request.getParameter("candidateLName");
	        String candidatePhone = request.getParameter("candidatePhone");
	        String candidateEmail = request.getParameter("candidateEmail");
	        String candidatePassword = request.getParameter("candidatePassword");
	        
	      
	        Connection con = null;
	        PreparedStatement stmt = null;
		
	      
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");
	            stmt = con.prepareStatement("UPDATE addCandidate SET candidateFName=?, candidateLName=?, candidatePhone=?, candidateEmail=?, candidatePassword=? WHERE candidateEmail=?");
	            stmt.setString(1, candidateFName);
	            stmt.setString(2, candidateLName);
	            stmt.setString(3, candidatePhone);
	            stmt.setString(4, candidateEmail);
	            stmt.setString(5, candidatePassword);

	            stmt.setString(6, candidateEmail);
	            
	            int rowsUpdated = stmt.executeUpdate();
	            
	            stmt.close();
	            con.close();
	            
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
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
	            
	            response.setHeader("Refresh", "2; URL=profileCandidate.jsp?email="+candidateEmail);
	        

	          
	          
	        } catch (Exception e) {
	        	e.printStackTrace();
	        	response.setContentType("text/html");
	        	  PrintWriter out = response.getWriter();
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
  	            
  	          response.setHeader("Refresh", "2; URL=profileCandidate.jsp?email="+candidateEmail);
	            
	        } 
		     
	    
	    }

		     
}
