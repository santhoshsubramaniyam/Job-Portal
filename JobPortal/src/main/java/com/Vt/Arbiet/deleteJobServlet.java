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
 * Servlet implementation class deleteJobServlet
 */
@WebServlet("/deleteJobServlet")
public class deleteJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String unique = request.getParameter("unique");

        Connection con = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?user=root&password=root");
            stmt = con.prepareStatement("DELETE FROM joblist WHERE uniqueKey=?");
            stmt.setString(1, unique);

            int rowsDeleted = stmt.executeUpdate();

            stmt.close();
            con.close();

            if (rowsDeleted > 0) {
                // Delete operation was successful
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<html><head>");
                out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
                out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
                out.println("</head><body>");
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Deleted Successfully',");
                out.println("  showConfirmButton: false,");
                out.println("  timer: 2000");
                out.println("})");
                out.println("</script>");
                out.println("</body></html>");

                response.setHeader("Refresh", "2; URL=manageJobs.jsp?email=" + email);
            } else {
                // No rows were affected, delete operation failed
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<html><head>");
                out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
                out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
                out.println("</head><body>");
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Delete Failed',");
                out.println("  showConfirmButton: false,");
                out.println("  timer: 2000");
                out.println("})");
                out.println("</script>");
                out.println("</body></html>");

                response.setHeader("Refresh", "2; URL=manageJobs.jsp?email=" + email);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print("{\"status\":\"error\",\"message\":\"Job could not be deleted\"}");

            response.setHeader("Refresh", "2; URL=manageJobs.jsp?email=" + email);
        }
    }
}
