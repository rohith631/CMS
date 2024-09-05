<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 0px auto; /* Reduce the top margin to 50px */
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: red;
        }

        form {
            margin-top: 1px;
        }

        .input-container {
            margin-bottom: 5px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 1px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: red; /* Change the background color to red */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #e63946; /* Change the hover color to a darker red */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add User</h1>
       <form action="loginProcess.jsp" method="post"> <!-- Assuming you have an "addUserProcess.jsp" to process the form -->
            <div class="input-container">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-container">
                <label for="id">ID:</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="input-container">
                <label for="dept">Department:</label>
                <input type="text" id="dept" name="dept" required>
            </div>
            <div class="input-container">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-container">
                <input type="submit" value="Add User">
            </div>
        </form>
    </div>
</body>
</html>
