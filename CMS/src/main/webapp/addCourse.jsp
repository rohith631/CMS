<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 400px;
            margin: 0px auto;
            padding: 10px;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }
        
        form {
            margin-top: 1px;
        }

        label {
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: red; /* Change the background color to red */
            color: white;
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
        <h1>Course Information Form</h1>
        <form action="savecourse.jsp" method="post">
            <label for="cname">Course Name:</label>
            <input type="text" id="cname" name="cname" required><br>

            <label for="cid">Course ID:</label>
            <input type="text" id="cid" name="cid" required><br>

            <label for="credits">Credits:</label>
            <input type="number" id="credits" name="credits" required><br>

            <label for="faculty">Faculty:</label>
            <input type="text" id="cfaculty" name="faculty" required><br>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
