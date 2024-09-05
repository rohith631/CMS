<!DOCTYPE html>
<html>
<head>
    <title>Instructor Page</title>
    <style>
        /* Reset some default styles for the sidebar and body */
        body, ul {
            margin: 0;
            padding: 0;
        }

        /* Styling the sidebar */
        .sidebar {
            width: 200px;
            background: linear-gradient(to bottom, #30475e, #222f3e);
            color: #fff;
            padding: 20px;
            height: 100%;
            position: fixed;
            top: 52px;
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
            background-color: #4d6d8c;
        }

        /* Styling the content area */
        .content {
            margin-left: 200px; /* To create space for the sidebar */
            padding: 20px;
            background-color: #f2f5f8;
            min-height: 100vh;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for the main heading */
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <%@include file="component/navbar.jsp" %>

    <div class="sidebar">
        <ul>
            <li><a href="#" onclick="loadPage('instructions.jsp')">Students instructions</a></li>
            <li><a href="#" onclick="loadPage('students_work.jsp')">Students Work</a></li>
            <li><a href="#" onclick="loadPage('students_submission.jsp')">Students submissions</a></li>
            <li><a href="#" onclick="loadPage('student_doubts.jsp')">Student doubts</a></li>
            <li><a href="#" onclick="loadPage('students_marks.jsp')">Students marks</a></li>
        </ul>
    </div>

    <div class="content" id="content">
        <h1>Welcome to the Instructor Dashboard</h1>
        <!-- Your content for the instructor page goes here -->
    </div>

    <script>
        function loadPage(pageName) {
            // Use AJAX to load the content of the clicked page into the 'content' div
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
