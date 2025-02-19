<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!--     <meta charset="UTF-8"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--     <title>OTP Error</title> -->
<!--     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- </head> -->
<!-- <body class="d-flex align-items-center justify-content-center vh-100 bg-light"> -->

<!--     <div class="container"> -->
<!--         <div class="row justify-content-center"> -->
<!--             <div class="col-md-6 col-lg-4"> -->
<!--                 <div class="card shadow-lg border-0 rounded-4"> -->
<!--                     <div class="card-body p-4 text-center"> -->
<!--                         <h2 class="text-danger">&#10060; Invalid OTP!</h2> -->
<!--                         <p class="text-muted">Please enter the correct OTP.</p> -->

<%--                         <a href="RegisterServlet?fullname=${reg.fullname}&email=${reg.email}&username=${reg.username}&password=${reg.password}&otp=${reg.otp}"  --%>
<!--                            class="btn btn-warning w-100">Try Again</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->

<!--     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- </body> -->
<!-- </html> -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OTP Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body p-4 text-center">
                        <h2 class="text-danger">&#10060; Invalid OTP!</h2>
                        <p class="text-muted">Please enter the correct OTP.</p>

                        <!-- Secure retry form using POST method -->
                        <form action="RegisterServlet" method="post">
                            <input type="hidden" name="fullname" value="${reg.fullname}">
                            <input type="hidden" name="email" value="${reg.email}">
                            <input type="hidden" name="username" value="${reg.username}">
                            <input type="hidden" name="password" value="${reg.password}">
                            <input type="hidden" name="otp" value="${reg.otp}">

                            <button type="submit" class="btn btn-warning w-100">Try Again</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

