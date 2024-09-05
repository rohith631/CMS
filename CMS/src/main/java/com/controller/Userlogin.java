package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Userlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Your database connection details
        String dbURL = "jdbc:mysql://localhost:3306/ep";
        String dbUser = "root";
        String dbPassword = "rohith123";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL query to check the user's credentials
            String sql = "SELECT * FROM userlogin WHERE username=? AND password=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            // If a record is found, the login is successful
            if (rs.next()) {
                // You can redirect to a success page or set a session attribute indicating successful login
                response.sendRedirect("admin_home.jsp");
            } else {
                // Login failed, show an error message
                PrintWriter out = response.getWriter();
                out.println("<script>alert('Invalid username or password'); window.location='login.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any exceptions (e.g., database connection errors)
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
