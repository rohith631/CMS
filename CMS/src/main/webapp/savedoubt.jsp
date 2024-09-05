<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Instructions</title>
</head>
<body>
    <%-- Process the form submission --%>
    <%
        String doubt = request.getParameter("doubt");
        if (doubt != null && !doubt.isEmpty()) {
            try {
                // Your database connection details
                String dbURL = "jdbc:mysql://localhost:3306/ep";
                String dbUser = "root";
                String dbPassword = "rohith123";

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");

                // Connect to the database
                Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Prepare the SQL query to insert the instructions
                String sql = "INSERT INTO askdoubt (doubt) VALUES (?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, doubt);

                // Execute the SQL query to insert the instructions
                pstmt.executeUpdate();

                // Close the resources
                pstmt.close();
                conn.close();

                // Redirect to a success page or show a success message
                response.sendRedirect("userhome.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                // Handle any exceptions (e.g., database connection errors)
                response.sendRedirect("error.jsp");
            }
        } else {
            // Handle the case when the form is submitted with empty instructions
            response.sendRedirect("error.jsp");
        }
    %>
</body>
</html>
