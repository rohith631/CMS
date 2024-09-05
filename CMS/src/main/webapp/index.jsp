<!DOCTYPE html>
<html>
<head>
    <title>COURSE MANAGEMENT SYSTEM</title>
    <style>
        body {
            background-image: url('Ep.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Styling for the header (navbar) */
        #header {
            background-color: #8B0000;
            color: #fff;
            text-align: center;
            padding: 10px; /* Increased padding for better spacing */
        }

        /* Navbar style */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
            color: #fff;
        }

        /* Styling for the container */
        #container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        /* Styling for the boxes */
        .box {
            width: 150px;
            height: 150px;
            background-color: #f9f9f9; /* Light gray background */
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition on hover */
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* Add a subtle shadow effect */
        }

        .box h2 {
            margin: 0;
            font-size: 18px;
            color: #333; /* Dark gray text color */
        }

        .box:hover {
            background-color: #f0f0f0; /* Light gray background on hover */
            transform: translateY(-5px); /* Add a slight lift effect on hover */
        }
    </style>
</head>
<body>
    <div id="header">
        <!-- Navbar -->
        <div class="navbar">
            <div class="logo">Course Management System</div>
            <!-- You can add any additional navigation elements here if needed -->
        </div>
    </div>
    <div id="container">
        <div class="box" onclick="window.location.href = 'admin_login.jsp';">
            <h2>Admin</h2>
        </div>
        <div class="box" onclick="window.location.href = 'instructor_login.jsp';">
            <h2>Instructor</h2>
        </div>
        <div class="box" onclick="window.location.href = 'userlogin.jsp';">
            <h2>User</h2>
        </div>
    </div>
</body>
</html>
