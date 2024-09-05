<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instructor Login Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
  body {
    background-image: url("Ep.jpg"); /* Replace "path/to/background-image.jpg" with the actual path to your image */
    background-size: cover; /* This will make the image cover the entire background */
    background-position: center center; /* Center the image horizontally and vertically */
  }

  .paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
  }
  #header {
    background-color: red;
    color: #fff;
    text-align: center;
    padding: 2px;
  }

  /* Change the background color to red and text color to white for the button */
  button.btn.bg-success {
    background-color: #dc3545;
    color: #fff;
  }
</style>
</head>
<body>

  <div class="container p-5">
    <div class="row">
      <div class="col-md-4 offset-md-4">
        <div class="card paint-card">
          <div class="card-body">
            <p class="fs-4 text-center">Instructor Login</p>
            <c:if test="${not empty succMsg }">
              <p class="text-center text-success fs-3">${succMsg}</p>
              <c:remove var="succMsg" scope="session" />
            </c:if>

            <c:if test="${not empty errorMsg }">
              <p class="text-center text-danger fs-5">${errorMsg}</p>
              <c:remove var="errorMsg" scope="session" />
            </c:if>

            <form action="InstructorloginService" method="post">
              <div class="mb-3">
                <label class="form-label">Username</label> <input required
                  name="username" type="text" class="form-control">
              </div>

              <div class="mb-3">
                <label class="form-label">Password</label> <input required
                  name="password" type="password" class="form-control">
              </div>

              <!-- Update the class to bg-danger for red color button -->
              <button type="submit" class="btn bg-danger text-white col-md-12">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
