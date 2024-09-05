<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Data Process</title>
</head>
<body>
    <% 
        String cname = request.getParameter("cname");
        String cid = request.getParameter("cid");
        int credits = Integer.parseInt(request.getParameter("credits"));
        String faculty = request.getParameter("faculty");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Replace the databaseUrl, username, and password with your MySQL configuration
            String databaseUrl = "jdbc:mysql://localhost:3306/ep";
            String dbUsername = "root";
            String dbPassword = "rohith123";

            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(databaseUrl, dbUsername, dbPassword);

            String sql = "INSERT INTO courses (cname, cid, credits, cfaculty) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cname);
            pstmt.setString(2, cid);
            pstmt.setInt(3, credits);
            pstmt.setString(4, faculty);
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
