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
            color: #333;
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
            border-radius: 4px;
            transition: box-shadow 0.3s ease;
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

        /* Styling for hover effect */
        .data-box:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Add a subtle animation on hover */
        .data-box:hover {
            transition: box-shadow 0.3s ease;
        }

        /* Add a border-bottom to separate data boxes */
        .data-box:not(:last-child) {
            border-bottom: 1px solid #ccc;
        }

        /* Add a nice border color to alternate data boxes */
        .data-box:nth-child(odd) {
            border-color: #007bff;
        }

        /* Customize the first-child data box */
        .data-box:first-child {
            background-color: #fff;
            border-color: #007bff;
            color: #007bff;
            font-weight: bold;
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
            String query = "SELECT * FROM instructions"; // Replace with your actual table name

            // Execute the query
            ResultSet rs = stmt.executeQuery(query);

            // Loop through the result set and display the data in boxes
            while (rs.next()) {
                String data = rs.getString("instructions"); // Replace with the column name that contains your data

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
