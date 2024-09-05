<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement"%>
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
            background-color: #ff0000; /* Red background color */
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            width: 100%;
            max-width: 400px;
        }

        /* White text color for better readability */
        .data-box p {
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Instructions Viewer</h2>
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
            String query = "SELECT * FROM askdoubt"; // Replace with your actual table name

            // Execute the query
            ResultSet rs = stmt.executeQuery(query);

            // Loop through the result set and display the data in boxes
            while (rs.next()) {
                String data = rs.getString("doubt"); // Replace with the column name that contains your data

                %>
                <div class="data-box">
                    <p><%= data %></p>
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