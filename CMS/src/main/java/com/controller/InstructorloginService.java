package com.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InstructorloginService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Your database connection details
            String dbURL = "jdbc:mysql://localhost:3306/ep";
            String dbUser = "root";
            String dbPassword = "rohith123";

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL query to validate user credentials
            String sql = "SELECT * FROM instructorlogin WHERE username=? AND password=?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            // Execute the SQL query
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                // Valid user, redirect to another page (e.g., user_home.jsp)
                response.sendRedirect("instructorhome.jsp");
            } else {
                // Invalid user, redirect back to the login page with an error message
                response.sendRedirect("instructorhome.jsp");
            }

            // Close the resources
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any exceptions (e.g., database connection errors)
            response.sendRedirect("error.jsp");
        }
    }
}
