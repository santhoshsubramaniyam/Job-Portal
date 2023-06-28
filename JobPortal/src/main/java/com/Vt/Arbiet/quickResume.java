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
 * Servlet implementation class register
 */
@WebServlet("/quickResume")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class quickResume extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quickResume() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String iid = request.getParameter("iid");
    	String resumeFName = request.getParameter("resumeFName");
        String resumeLName = request.getParameter("resumeLName");
        String resumeFatherName = request.getParameter("resumeFatherName");
        String resumeGender = request.getParameter("resumeGender");
        String resumeEducation = request.getParameter("resumeEducation");
        String resumeDOB = request.getParameter("resumeDOB");
        String resumeCountry = request.getParameter("resumeCountry");
        String resumeEmail = request.getParameter("resumeEmail");
        String resumePhone = request.getParameter("resumePhone");
        String eduStartDate = request.getParameter("eduStartDate");
        String eduEndDate = request.getParameter("eduEndDate");
        String eduDegree = request.getParameter("eduDegree");
        String eduSpecialization = request.getParameter("eduSpecialization");
        String eduUniversity = request.getParameter("eduUniversity");
        String expJobName = request.getParameter("expJobName");
        String expCompanyName = request.getParameter("expCompanyName");
        String expStartDate = request.getParameter("expStartDate");
        String expEndDate = request.getParameter("expEndDate");
        String resumeContent = request.getParameter("resumeContent");

        
        // Get the uploaded file
        Part filePart = request.getPart("resume");
        InputStream inputStream = null;
        if (filePart != null) {
            // Get the file input stream and file name
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?useSSL=true", "root", "root");

                // Email doesn't exist, insert the new user data into the database
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO quickResume (resumeFName, resumeLName, resumeFatherName, resumeGender, resumeEducation, resumeDOB, resumeCountry, resumeEmail, resumePhone, eduStartDate, eduEndDate, eduDegree, eduSpecialization, eduUniversity, expJobName, expCompanyName ,expStartDate, expEndDate, resumeContent, resume, iid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                
                insertStatement.setString(1, resumeFName);
                insertStatement.setString(2, resumeLName);
                insertStatement.setString(3, resumeFatherName);
                insertStatement.setString(4, resumeGender);
                insertStatement.setString(5, resumeEducation);
                insertStatement.setString(6, resumeDOB);
                insertStatement.setString(7, resumeCountry);
                insertStatement.setString(8, resumeEmail);
                insertStatement.setString(9, resumePhone);
                insertStatement.setString(10, eduStartDate);
                insertStatement.setString(11, eduEndDate);
                insertStatement.setString(12, eduDegree);
                insertStatement.setString(13, eduSpecialization);
                insertStatement.setString(14, eduUniversity);
                insertStatement.setString(15, expJobName);
                insertStatement.setString(16, expCompanyName);
                insertStatement.setString(17, expStartDate);
                insertStatement.setString(18, expEndDate);
                insertStatement.setString(19, resumeContent);

                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    insertStatement.setBlob(20, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    insertStatement.setNull(20, Types.BLOB);
                }
                
                insertStatement.setString(21, iid);
               
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
    	            out.println("  title: 'Your Quick Resume Created..!!',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 2000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=jobList.jsp?email="+resumeEmail);

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