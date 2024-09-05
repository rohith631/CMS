<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Home</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .sidebar {
    width: 220px;
    background-color: #cc0000;
    padding: 15px;
    height: 100vh;
    position: fixed;
    top: 52px; /* Adjusted to create a 10px gap at the top */
    left: 0;
    overflow-y: auto;
}


        .sidebar button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #b30000;
            border: none;
            text-align: left;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        .sidebar button:hover {
            background-color: #8B0000;
        }

        #content {
            margin-left: 240px; /* Adjust to give space for the sidebar */
            padding: 20px;
        }

        .content-box {
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 4px;
        }

        .content-box h2 {
            margin: 0;
            padding-bottom: 10px;
            border-bottom: 1px solid #ccc;
            color: #cc0000;
        }
    </style>
</head>
<body>
    <%@include file="component/navbar.jsp" %>
    <div class="sidebar">
        <button onclick="loadPage('addUser.jsp')">Add User</button>
        <button onclick="loadPage('addInstructor.jsp')">Add Instructor</button>
        <button onclick="loadPage('addCourse.jsp')">Add Course</button>
    </div>
    <div id="content">
        <!-- Content from other pages will be loaded here -->
        <div class="content-box">
            <h2>Welcome to Admin Home</h2>
            <p>This is the admin home page content.</p>
        </div>
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
