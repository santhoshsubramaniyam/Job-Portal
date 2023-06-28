package com.Vt.Arbiet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateProfile
 */
@WebServlet("/updateJob")
public class UpdateJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String uniqueKey = request.getParameter("unique");
        String jobName = request.getParameter("jobName");
        String jobLocation = request.getParameter("jobLocation");
        String jobExperience = request.getParameter("jobExperience");
        String jobType = request.getParameter("jobType");
        String jobSalary = request.getParameter("jobSalary");
        String jobDes = request.getParameter("jobDes");
        String status = request.getParameter("status");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?user=root&password=root");
            PreparedStatement stmt = con.prepareStatement("UPDATE joblist SET jobName=?, jobLocation=?, jobExperience=?, jobType=?, jobSalary=?, jobDes=?, status=? WHERE uniqueKey=?");
            stmt.setString(1, jobName);
            stmt.setString(2, jobLocation);
            stmt.setString(3, jobExperience);
            stmt.setString(4, jobType);
            stmt.setString(5, jobSalary);
            stmt.setString(6, jobDes);
            stmt.setString(7, status);
            stmt.setString(8, uniqueKey);

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

            response.setHeader("Refresh", "2; URL=updateJob.jsp?jobId="+uniqueKey+"&email="+email);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.setContentType("text/plain");
            PrintWriter out = response.getWriter();
            out.println("User details could not be updated");
        } catch (SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
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

            response.setHeader("Refresh", "2; URL=updateJob.jsp?jobId="+uniqueKey+"&email="+email);
        }
    }
}

