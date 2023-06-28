package com.Vt.Arbiet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCandidateStatusServlet")
public class UpdateCandidateStatusServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
	    String unique = request.getParameter("uniqueApplyId");
	    String candidateId = request.getParameter("id");
	    String status = request.getParameter("status");

	    

	    try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?user=root&password=root");
	        // Prepare the insert statement
	        String insertQuery = "UPDATE appliedJobs SET status=? WHERE uniqueApplyId=?";
	        PreparedStatement stmt = con.prepareStatement(insertQuery);
	        stmt.setString(1, status);
	        stmt.setString(2, unique);
	       
  
	        // Execute the insert statement
	        int rowsInserted = stmt.executeUpdate();

	        stmt.close();
	        con.close();

	        // Redirect back to the manageCandidates.jsp page or perform any other action
	        response.sendRedirect("manageCandidates.jsp?jobId="+candidateId+"&email="+email);

	    } catch (SQLException | ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	}


}


