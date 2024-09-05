<!DOCTYPE html>
<html>
<head>
    <title>User Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        /* Styling the sidebar */
        .sidebar {
        width: 250px;
        background-color:  #333;
        padding: 20px;
        height: 100%;
        position: fixed;
        top: 52px; /* Adjusted the top position */
        left: 0;
        overflow-y: auto;
    }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar li {
            margin-bottom: 10px;
        }

        .sidebar li a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .sidebar li a:hover {
            background-color: #0056b3;
        }

        /* Styling the content area */
        .content {
            margin-left: 270px; /* To create space for the wider sidebar */
            padding: 20px;
        }

        /* Styles for the fields */
        .field {
            margin-bottom: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        .field h2 {
            margin: 0;
            padding-bottom: 10px;
            border-bottom: 1px solid #ccc;
        }

        /* Style for form elements */
        input[type="file"] {
            display: block;
            margin-bottom: 10px;
        }

        textarea {
            width: 100%;
            resize: vertical;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Custom styling for specific elements */
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        /* Unique dashboard style for the sidebar */
        .dashboard {
            background-color: #0056b3;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .dashboard h2 {
            color: #fff;
            font-size: 18px;
            margin: 0;
            padding-bottom: 10px;
            border-bottom: 1px solid #007bff;
        }

        .dashboard p {
            color: #fff;
            margin: 0;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <%@include file="component/navbar.jsp" %>

    <div class="sidebar">
        <div class="dashboard">
            <h2>User Dashboard</h2>
            <p>Welcome, User 1!</p>
        </div>
        <ul>
            <li><a href="#instructions" onclick="loadPage('userinstruction.jsp')">Instructions</a></li>
            <li><a href="#works" onclick="loadPage('userworks.jsp')">Works</a></li>
            <li><a href="#submissions" onclick="loadPage('usersubmission.jsp')">Submissions</a></li>
            <li><a href="#marks" onclick="loadPage('usermarks.jsp')">Marks</a></li>
            <li><a href="#doubts" onclick="loadPage('askdoubt.jsp')">Ask Doubts</a></li>
        </ul>
    </div>
    <div class="content" id="content">
        <h1>Welcome to the User Page</h1>
        <!-- Your content for the user page goes here -->
        <div class="field" id="instructions">
            <h2>Instructions</h2>
            <p>Read the instructions carefully.</p>
        </div>
        <div class="field" id="works">
            <h2>Works</h2>
            <p>View the assigned works here.</p>
        </div>
        <div class="field" id="submissions">
            <h2>Submissions</h2>
            <form action="upload_submission.jsp" method="post" enctype="multipart/form-data">
                <input type="file" name="submissionFile">
                <input type="submit" value="Submit">
            </form>
        </div>
        <div class="field" id="marks">
            <h2>Marks</h2>
            <!-- Display marks provided by instructor here -->
        </div>
        <div class="field" id="doubts">
            <h2>Ask Doubts</h2>
            <form action="submit_doubts.jsp" method="post">
                <textarea name="doubts" rows="5" cols="30"></textarea>
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>

    <script>
        function loadPage(pageName) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("content").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET", pageName, true);
            xhttp.send();
        }
    </script>
</body>
</html>
