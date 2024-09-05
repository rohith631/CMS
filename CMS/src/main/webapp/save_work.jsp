<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Student Marks</title>
</head>
<body>
    <%-- Process the form submission --%>
    <%
        String name = request.getParameter("name");
        int subject1 = Integer.parseInt(request.getParameter("subject1"));
        int subject2 = Integer.parseInt(request.getParameter("subject2"));
        int subject3 = Integer.parseInt(request.getParameter("subject3"));
        int subject4 = Integer.parseInt(request.getParameter("subject4"));

        try {
            // Your database connection details
            String dbURL = "jdbc:mysql://localhost:3306/ep";
            String dbUser = "root";
            String dbPassword = "rohith123";

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL query to insert the student marks
            String sql = "INSERT INTO student_marks (name, subject1, subject2, subject3, subject4) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, subject1);
            pstmt.setInt(3, subject2);
            pstmt.setInt(4, subject3);
            pstmt.setInt(5, subject4);

            // Execute the SQL query to insert the student marks
            pstmt.executeUpdate();

            // Close the resources
            pstmt.close();
            conn.close();

            // Redirect to a success page or show a success message
            response.sendRedirect("instructorhome.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any exceptions (e.g., database connection errors)
            response.sendRedirect("error.jsp");
        }
    %>
</body>
</html>
