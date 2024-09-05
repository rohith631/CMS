<!DOCTYPE html>
<html>
<head>
    <title>Submit Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .data-box-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 20px;
        }

        .data-box {
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            padding: 15px;
            width: 300px;
            border-radius: 4px;
        }

        .data-box p {
            margin: 0;
            font-size: 16px;
            line-height: 1.6;
            color: #333;
        }

        .data-box p:first-child {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Submit Marks</h1>
        <%-- JDBC database connection details --%>
        <%@ page import="java.sql.*" %>
        <% String dbURL = "jdbc:mysql://localhost:3306/ep"; %>
        <% String dbUser = "root"; %>
        <% String dbPassword = "rohith123"; %>

        <%-- Retrieve form data --%>
        <% String studentName = request.getParameter("studentName");
           String subject = request.getParameter("subject");
           int marks = Integer.parseInt(request.getParameter("marks"));
        %>

        <% try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Create a SQL statement for inserting data
            String query = "INSERT INTO marks (student_name, subject, marks) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, studentName);
            pstmt.setString(2, subject);
            pstmt.setInt(3, marks);

            // Execute the insert statement
            pstmt.executeUpdate();

            // Close the resources
            pstmt.close();
            conn.close();

            // Redirect back to the form page after successful submission
            response.sendRedirect("instructorhome.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            // Handle any errors or display an error message to the user
        }
        %>
    </div>
</body>
</html>
