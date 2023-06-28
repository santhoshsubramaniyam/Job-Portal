package com.Vt.Arbiet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class addEmployer
 */
@WebServlet("/addCandidate")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class addCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String candidateFName = request.getParameter("candidateFName");
        String candidateLName = request.getParameter("candidateLName");
        String candidatePhone  = request.getParameter("candidatePhone");
        String candidateEmail = request.getParameter("candidateEmail");
        String candidatePassword = request.getParameter("candidatePassword");
       
        
        // Get the uploaded file
        Part filePart = request.getPart("candidateProfile");
        InputStream inputStream = null;
        if (filePart != null) {
            // Get the file input stream and file name
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
       
        PrintWriter out=response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?useSSL=true", "root", "root");

                // Email doesn't exist, insert the new user data into the database
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO addCandidate (candidateFName, candidateLName, candidatePhone, candidateEmail, candidatePassword, candidateProfile) VALUES (?, ?, ?, ?, ?, ?)");

              

                
                insertStatement.setString(1, candidateFName);
                insertStatement.setString(2, candidateLName);
                insertStatement.setString(3, candidatePhone);
                insertStatement.setString(4, candidateEmail);
                insertStatement.setString(5, candidatePassword);
               
                
                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    insertStatement.setBlob(6, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    insertStatement.setNull(6, Types.BLOB);
                }
               
                int rowCount = insertStatement.executeUpdate();

                if (rowCount > 0) {
                    request.setAttribute("status", "success");
                    
                    out.println("<html><head>"); 
    	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
    	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
    	            out.println("</head><body>");
    	            out.println("<script>");
    	            out.println("Swal.fire({"); 
    	            out.println("  icon: 'success',");
    	            out.println("  title: 'Registered Successfully..!!',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 2000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=candidateSignup.jsp");

                } else {
                    request.setAttribute("status", "failed");
                }
            
           

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }
        }

    }

}
