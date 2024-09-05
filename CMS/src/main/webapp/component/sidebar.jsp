<!DOCTYPE html>
<html>
<head>
    <title>Sidebar</title>
    <style>
        /* Your CSS styles for the sidebar here */
        /* For simplicity, I'm using inline styles, but you can move this to an external CSS file if you prefer */
        .sidebar {
            width: 200px;
            background-color: #f1f1f1;
            padding: 15px;
        }

        .sidebar h1 {
            margin-bottom: 20px;
            text-align: center;
        }

        .sidebar button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #ddd;
            border: none;
            text-align: left;
        }

        .sidebar button:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h1>Dashboard</h1>
        <button onclick="loadPage('addUser.jsp')">Add User</button>
        <button onclick="loadPage('addInstructor.jsp')">Add Instructor</button>
        <button onclick="loadPage('addCourse.jsp')">Add Course</button>
    </div>
    <div id="content">
        <!-- Content from other pages will be loaded here -->
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
