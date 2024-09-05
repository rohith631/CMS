<!DOCTYPE html>
<html>
<head>
    <title>Student Submission Marks</title>
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

        .form-box {
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin: 10px auto; /* Updated to center the form box */
            padding: 15px;
            width: 100%;
            max-width: 400px;
        }

        .form-box label {
            display: block;
            margin-bottom: 8px;
        }

        .form-box input[type="text"],
        .form-box input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-box input[type="submit"] {
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Table styles for displaying submitted data */
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #ff0000;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Submission Marks</h2>
        <div class="form-box">
            <form action="savemarks.jsp" method="post">
                <label for="studentName">Student Name:</label>
                <input type="text" id="studentName" name="studentName" required>

                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>

                <label for="marks">Marks:</label>
                <input type="number" id="marks" name="marks" required>

                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
</body>
</html>
