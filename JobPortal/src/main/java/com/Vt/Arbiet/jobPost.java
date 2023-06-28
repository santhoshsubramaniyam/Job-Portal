package com.Vt.Arbiet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class register
 */
@WebServlet("/jobPost")
@MultipartConfig(maxFileSize = 16177215) // 16MB max file size
public class jobPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jobPost() {
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
    	
    	String mail = request.getParameter("email");
    	String comName=request.getParameter("companyName");
        String uniqueKey = request.getParameter("unique");
    	String jobName = request.getParameter("jobName");
        String employerName = request.getParameter("employerName");
        String jobLocation = request.getParameter("jobLocation");
        String jobExperience = request.getParameter("jobExperience");
        String employerPhone = request.getParameter("employerPhone");
        String jobType = request.getParameter("jobType");
        String jobSalary = request.getParameter("jobSalary");
        String jobDes = request.getParameter("jobDes");
        String companyLogo = request.getParameter("companyLogo");
        String companyDes = request.getParameter("companyDes");
        String appliedDate = request.getParameter("appliedDate");
        String jobSchedule = request.getParameter("jobSchedule");
        String hire = request.getParameter("hire");
        String supplementalPay = request.getParameter("supplementalPay");
        String benefits = request.getParameter("benefits");

      

        Connection conn = null;

        PrintWriter out=response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?useSSL=true", "root", "root");

                // Email doesn't exist, insert the new user data into the database
                PreparedStatement insertStatement = conn.prepareStatement("INSERT INTO joblist (uniqueKey, jobName, employerName, jobLocation, jobExperience, employerPhone, jobType, jobSalary, companyDes, jobDes, appliedData, companyLogo, companyName, email, jobSchedule, hire, supplementalPay, benefits) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                
                insertStatement.setString(1, uniqueKey);
                insertStatement.setString(2, jobName);
                insertStatement.setString(3, employerName);
                insertStatement.setString(4, jobLocation);
                insertStatement.setString(5, jobExperience);
                insertStatement.setString(6, employerPhone);
                insertStatement.setString(7, jobType);
                insertStatement.setString(8, jobSalary);
                insertStatement.setString(9, companyDes);
                insertStatement.setString(10, jobDes);
                insertStatement.setString(11, appliedDate);
                insertStatement.setString(12, companyLogo);
                insertStatement.setString(13, comName);
                insertStatement.setString(14, mail);
                insertStatement.setString(15, jobSchedule);
                insertStatement.setString(16, hire);
                insertStatement.setString(17, supplementalPay);
                insertStatement.setString(18, benefits);
                

               
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
    	            out.println("  title: 'Job Posted Successfully..!!',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 2000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=postedJobs.jsp?email="+mail);

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