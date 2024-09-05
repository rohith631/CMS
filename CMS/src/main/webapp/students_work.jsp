<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enter Instructions</title>
    <style>
    /* Reset some default styles for consistency */
    body, h1, form {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        background-color: #f2f2f2;
    }

    h1 {
        text-align: center;
        margin: 20px 0;
    }

    form {
        width: 80%;
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    textarea {
        width: 100%;
        resize: vertical;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        display: block;
        width: 100%;
        padding: 10px;
        font-size: 16px;
        background-color: #FF0000; /* Change to red color */
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #FF3333; /* Darker red on hover */
    }

    input[type="submit"]:focus {
        outline: none;
    }

    /* Additional styles for student_work.jsp */
    .student-work-container {
        width: 80%;
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .student-work-item {
        margin-bottom: 10px;
        padding: 10px;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .student-work-item p {
        margin: 0;
    }
    </style>
</head>
<body>
    <h1>Post Students Work</h1>
    <form method="post" action="save_work.jsp">
        <textarea name="works" rows="10" cols="50"></textarea>
        <br>
        <input type="submit" value="Submit Instructions">
    </form>
</body>
</html>
