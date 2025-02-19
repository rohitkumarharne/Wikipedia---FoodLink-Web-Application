<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- Custom CSS -->
    <link href='<c:url value="/resources/css/home.css" />' rel="stylesheet">
</head>
<body>
<%--     <% --%>
<!-- //     Integer uid = (Integer) session.getAttribute("uid"); -->

<%--     %> --%>
<%--      <p>Your User ID: <%= uid %></p> --%>
    <!-- Include Navbar -->
    <jsp:include page="header.jsp"/>

    <!-- Welcome Section -->
    <div class="container my-5">
        <div class="row align-items-center">
            <!-- Image -->
            <div class="col-md-6 text-center">
                <img src="resources/img/Sanjay_Vazirani.jpg" alt="Sanjay Vazirani" class="img-fluid rounded shadow">
            </div>
            <!-- Welcome Text -->
            <div class="col-md-6">
                <p>I welcome you all to our Foodlink Family. You have been selected to be a part of Foodlink for your zeal, positivity, and experience.</p>
                <p>“My biggest advice is to get your head down and work hard. Just get on with the job and try and obtain as much experience as you can in whatever job you’re doing. If you persevere, the rewards will follow sooner or later.”</p>
                <p class="fw-bold text-primary">- Sanjay Vazirani -</p>
            </div>
        </div>
    </div>
<%-- <jsp:include page="footer.jsp"/> --%>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
