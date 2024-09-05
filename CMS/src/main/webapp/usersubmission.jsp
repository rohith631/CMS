<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>File Upload</title>
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

    input[type="file"] {
        width: 100%;
        padding: 10px;
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

    /* Additional styles for students_submission.jsp */
    .submission-container {
        width: 80%;
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .submission-item {
        margin-bottom: 10px;
        padding: 10px;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .submission-item p {
        margin: 0;
    }
    </style>
</head>
<body>
    <h1>File Upload</h1>
    <form method="post" action="save_file.jsp" enctype="multipart/form-data">
        <input type="file" name="file" id="file">
        <br>
        <input type="submit" value="Upload File">
    </form>
</body>
</html>
