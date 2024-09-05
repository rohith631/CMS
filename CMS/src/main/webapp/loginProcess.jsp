<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Data Process</title>
</head>
<body>
    <% 
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String dept = request.getParameter("dept");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Replace the databaseUrl, username, and password with your MySQL configuration
            String databaseUrl = "jdbc:mysql://localhost:3306/ep";
            String dbUsername = "root";
            String dbPassword = "rohith123";

            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(databaseUrl, dbUsername, dbPassword);

            String sql = "INSERT INTO userlogin (name, id, dept, username, password) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, id);
            pstmt.setString(3, dept);
            pstmt.setString(4, username);
            pstmt.setString(5, password);
            pstmt.executeUpdate();

            String sql1 = "INSERT INTO instructorlogin (name, id, dept, username, password) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql1);
            pstmt.setString(1, name);
            pstmt.setString(2, id);
            pstmt.setString(3, dept);
            pstmt.setString(4, username);
            pstmt.setString(5, password);
            pstmt.executeUpdate();
            
            out.println("<h1>Data Saved Successfully!</h1>");

        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h1>Error: " + e.getMessage() + "</h1>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.println("<h1>Error: " + e.getMessage() + "</h1>");
            }
        }
    %>
</body>
</html>
