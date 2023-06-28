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
@WebServlet("/updateManageStatus")
public class updateManageStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	       String id = request.getParameter("id");
	        String status = request.getParameter("status");
	        String email = request.getParameter("email");
	       
	        
	      
	        Connection con = null;
	        PreparedStatement stmt = null;
		
	      
	        try {
	        	
	        	System.out.println(id);
	        	System.out.println(status);

	        	
	        	
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");
	            stmt = con.prepareStatement("UPDATE appliedJobs SET status=? WHERE uniqueApplyId=?");
	            stmt.setString(1, status);
	            stmt.setString(2, id);
	            
	            
	            
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
	            
	            response.setHeader("Refresh", "2; URL=manageCandidates.jsp?filterOption=sortlist&email="+email);
	        

	          
	          
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
  	            
  	          response.setHeader("Refresh", "2; URL=manageCandidates.jsp?filterOption=sortlist&email="+email);
  	        
	        } 
		     
	    
	    }

		     
}
