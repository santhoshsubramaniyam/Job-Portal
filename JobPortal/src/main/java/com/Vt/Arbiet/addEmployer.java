package com.Vt.Arbiet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/addEmployer")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class addEmployer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addEmployer() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String companyName = request.getParameter("companyName");
        String employerName = request.getParameter("employerName");
        String employerLocation = request.getParameter("employerLocation");
        String employerPhone = request.getParameter("employerPhone");
        String employerEmail = request.getParameter("employerEmail");
        String employerPassword = request.getParameter("employerPassword");
        String companyDescription = request.getParameter("companyDescription");
        
        // Get the uploaded file
        Part filePart = request.getPart("companyLogo");
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
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO addEmployer (companyName, employerName, employerLocation, employerPhone, employerEmail, employerPassword, companyDescription, companyLogo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

              

                
                insertStatement.setString(1, companyName);
                insertStatement.setString(2, employerName);
                insertStatement.setString(3, employerLocation);
                insertStatement.setString(4, employerPhone);
                insertStatement.setString(5, employerEmail);
                insertStatement.setString(6, employerPassword);
                insertStatement.setString(7, companyDescription);
                
                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    insertStatement.setBlob(8, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    insertStatement.setNull(8, Types.BLOB);
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
    	            
    	            response.setHeader("Refresh", "2; URL=employerSignup.jsp");

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
