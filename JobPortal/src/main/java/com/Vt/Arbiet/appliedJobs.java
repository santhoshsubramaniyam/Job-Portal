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
@WebServlet("/appliedJobs")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class appliedJobs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public appliedJobs() {
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
    	String mail=request.getParameter("email");
    	
    	 String jobUniqueKey = request.getParameter("jobUniqueKey");
    	 
    	 String iid = request.getParameter("iid");
    	 
    	 String companyName = request.getParameter("companyName");
         String jobName = request.getParameter("jobName");
         String date = request.getParameter("date");
         String location = request.getParameter("location");
         String ctc = request.getParameter("ctc");
         String jobType = request.getParameter("jobType");
         
         
        String resumeFName = request.getParameter("applyFName");
        String resumeLName = request.getParameter("applyLName");
        String resumeFatherName = request.getParameter("applyFatherName");
        String resumeGender = request.getParameter("applyGender");
        String resumeEducation = request.getParameter("applyEducation");
        String resumeDOB = request.getParameter("applyDOB");
        String resumeCountry = request.getParameter("applyCountry");
        String resumeEmail = request.getParameter("applyEmail");
        String resumePhone = request.getParameter("applyPhone");
        String eduStartDate = request.getParameter("applyEduStartDate");
        String eduEndDate = request.getParameter("applyEduEndDate");
        String eduDegree = request.getParameter("applyDegree");
        String eduSpecialization = request.getParameter("applySpecial");
        String eduUniversity = request.getParameter("applyUniversity");
        String expJobName = request.getParameter("applyExpJobName");
        String expCompanyName = request.getParameter("applyExpCompanyName");
        String expStartDate = request.getParameter("applyExpStartDate");
        String expEndDate = request.getParameter("applyExpEndDate");
        String resumeContent = request.getParameter("applyResumeContent");
        String uniqueApplyId = request.getParameter("uniqueApplyId");
        
        

        
        // Get the uploaded file
        Part filePart = request.getPart("applyResume");
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
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO appliedJobs (jobUniqueKey,companyName,jobName,date,location,ctc,jobType, applyFName, applyLName, applyFatherName, applyGender, applyEducation, applyDOB, applyCountry, applyEmail, applyPhone, applyEduStartDate, applyEduEndDate, applyDegree, applySpecial, applyUniversity, applyExpJobName, applyExpCompanyName ,applyExpStartDate, applyExpEndDate, applyResumeContent, applyResume, uniqueApplyId, iid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                insertStatement.setString(1, jobUniqueKey);
                
                insertStatement.setString(2, companyName);
                insertStatement.setString(3, jobName);
                insertStatement.setString(4, date);
                insertStatement.setString(5, location);
                insertStatement.setString(6, ctc);
                insertStatement.setString(7, jobType);
                
                insertStatement.setString(8, resumeFName);
                insertStatement.setString(9, resumeLName);
                insertStatement.setString(10, resumeFatherName);
                insertStatement.setString(11, resumeGender);
                insertStatement.setString(12, resumeEducation);
                insertStatement.setString(13, resumeDOB);
                insertStatement.setString(14, resumeCountry);
                insertStatement.setString(15, resumeEmail);
                insertStatement.setString(16, resumePhone);
                insertStatement.setString(17, eduStartDate);
                insertStatement.setString(18, eduEndDate);
                insertStatement.setString(19, eduDegree);
                insertStatement.setString(20, eduSpecialization);
                insertStatement.setString(21, eduUniversity);
                insertStatement.setString(22, expJobName);
                insertStatement.setString(23, expCompanyName);
                insertStatement.setString(24, expStartDate);
                insertStatement.setString(25, expEndDate);
                insertStatement.setString(26, resumeContent);

                if (inputStream != null) {
                    // Set the photo parameter if the file was uploaded
                    insertStatement.setBlob(27, inputStream);
                } else {
                    // Set the photo parameter to null if no file was uploaded
                    insertStatement.setNull(27, Types.BLOB);
                }
                
                insertStatement.setString(28, uniqueApplyId);
                insertStatement.setString(29, iid);
               
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
    	            out.println("  title: 'Job Applied successfully..!!',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 2000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=appliedJobs.jsp?email="+mail);

                } else {
                    request.setAttribute("status", "failed");
                }
            

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
            out.println("<html><head>"); 
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
            out.println("</head><body>");
            out.println("<script>");
            out.println("Swal.fire({"); 
            out.println("  icon: 'warning',");
            out.println("  title: 'Already you have applied for this job',");
            out.println("  showConfirmButton: false,");
            out.println("  timer: 2000");
            out.println("})");
            out.println("</script>"); 
            out.println("</body></html>");
            
            response.setHeader("Refresh", "2; URL=jobDetail.jsp?id="+jobUniqueKey+"&email="+mail);
            
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }
        }

    }
}