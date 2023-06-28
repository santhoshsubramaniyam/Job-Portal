package com.Vt.Arbiet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet("/candidateLogin")
public class candidateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public candidateLogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String candidateEmail = request.getParameter("candidateEmail");
        String candidatePassword = request.getParameter("candidatePassword");
       
        Connection conn = null;
       
        PrintWriter out=response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?useSSL=true", "root", "root");

                // Email doesn't exist, insert the new user data into the database
            PreparedStatement pst = conn.prepareStatement("select * from addCandidate where candidateEmail=? and candidatePassword=?");
    		pst.setString(1, candidateEmail);
    		pst.setString(2, candidatePassword);

    		ResultSet rs = pst.executeQuery();

                if (rs.next()) {
                    request.setAttribute("status", "success");
                    
                    out.println("<html><head>"); 
    	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
    	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
    	            out.println("</head><body>");
    	            out.println("<script>");
    	            out.println("Swal.fire({"); 
    	            out.println("  icon: 'success',");
    	            out.println("  title: 'Welcome..!!',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 2000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=candidateHome.jsp?email="+candidateEmail);

                } else {
                    request.setAttribute("status", "failed");
                    out.println("<html><head>"); 
    	            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js'></script>");
    	            out.println("<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css'>");
    	            out.println("</head><body>");
    	            out.println("<script>");
    	            out.println("Swal.fire({"); 
    	            out.println("  icon: 'error',");
    	            out.println("  title: 'Registered failed',");
    	            out.println("  showConfirmButton: false,");
    	            out.println("  timer: 3000");
    	            out.println("})");
    	            out.println("</script>"); 
    	            out.println("</body></html>");
    	            
    	            response.setHeader("Refresh", "2; URL=candidateSignup.jsp");
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
