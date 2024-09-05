<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Login Page</title>
    <%@include file="component/allcss.jsp" %>
    <style type="text/css">
        /* Set background image on the body element to cover the whole page */
        body {
            height: 100%;
            margin: 0;
            background-image: url("Ep.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            font-family: Arial, sans-serif; /* Added font-family for the entire page */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Set container to fill the whole viewport height */
        }

        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
            background-color: rgba(255, 255, 255, 0.9); /* Add some transparency to the card */
            max-width: 400px; /* Limit the card width to prevent it from covering the entire viewport */
            padding: 20px;
        }

        /* Change the background color to red and text color to white for the button */
        .btn.bg-success {
            background-color: #cc0000; /* Red color for the button */
            color: #fff; /* White text color for the button */
        }

    </style>
</head>
<body>

    <div class="container">
        <div class="card paint-card">
            <div class="card-body">
                <p class="fs-4 text-center">User Login</p>

                <form action="UserloginService" method="post">
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input required name="username" type="text" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input required name="password" type="password" class="form-control">
                    </div>
                    <!-- Update the class to bg-danger for red color button -->
                    <button type="submit" class="btn bg-danger text-white col-md-12">Login</button>
                </form>

            </div>
        </div>
    </div>
</body>
</html>
