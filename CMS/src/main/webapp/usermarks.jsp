<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
    <title>Data Viewer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin: 30px 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .data-box {
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            width: 100%;
            max-width: 400px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Data Viewer</h2>
        <%-- JDBC database connection details --%>
        <%@ page import="java.sql.*" %>
        <% String dbURL = "jdbc:mysql://localhost:3306/ep"; %>
        <% String dbUser = "root"; %>
        <% String dbPassword = "rohith123"; %>

        <% try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Create a SQL statement
            Statement stmt = conn.createStatement();

            // Define your query to read data from the table
            String query = "SELECT * FROM marks"; // Replace with your actual table name

            // Execute the query
            ResultSet rs = stmt.executeQuery(query);

            // Loop through the result set and display the data in boxes
            while (rs.next()) {
                String studentName = rs.getString("student_name");
                String subject = rs.getString("subject");
                int marks = rs.getInt("marks");

                %>
                <div class="data-box">
                    <p>Student Name: <%= studentName %></p>
                    <p>Subject: <%= subject %></p>
                    <p>Marks: <%= marks %></p>
                </div>
                <%
            }

            // Close the resources
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </div>
</body>
</html>
