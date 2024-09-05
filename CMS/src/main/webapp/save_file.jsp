<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.InputStream, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save File</title>
</head>
<body>
    <%-- Process the file upload --%>
    <%
        // Your database connection details
        String dbURL = "jjdbc:mysql://localhost:3306/ep";
        String dbUser = "root";
        String dbPassword = "rohith123";

        Part filePart = request.getPart("file"); // Correctly retrieve the file part

        String fileName = filePart.getSubmittedFileName(); // Get the file name
        InputStream fileData = filePart.getInputStream();
        if (fileName != null && fileData != null) {
            try {
                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");

                // Connect to the database
                Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Prepare the SQL query to insert the file data
                String sql = "INSERT INTO file(file_name, file_data) VALUES (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fileName);
                pstmt.setBlob(2, fileData);

                // Execute the SQL query to insert the file data
                pstmt.executeUpdate();

                // Close the resources
                pstmt.close();
                conn.close();

                // Redirect to a success page or show a success message
                response.sendRedirect("success.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                // Handle any exceptions (e.g., database connection errors)
                response.sendRedirect("error.jsp");
            }
        } else {
            // Handle the case when no file is selected
            response.sendRedirect("error.jsp");
        }
    %>
</body>
</html>
