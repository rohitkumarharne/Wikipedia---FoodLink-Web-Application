<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OTP Validation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body p-4 text-center">
                        <h2 class="text-primary">&#128274; OTP Verification</h2>

                        <!-- Display error message if any -->
                        <c:if test="${not empty message}">
                            <div class="alert alert-danger fw-bold" role="alert">
                                ${message}
                            </div>
                        </c:if>

                        <!-- Display email to which OTP was sent -->
                        <div class="alert alert-info">
                            OTP has been sent to <strong>${reg.email}</strong>.
                        </div>

                        <!-- OTP Input Form -->
                        <form action="validateOTP" method="post" class="mt-3">
                            <input type="hidden" name="fullname" value="${reg.fullname}">
                            <input type="hidden" name="email" value="${reg.email}">
                            <input type="hidden" name="username" value="${reg.username}">
                            <input type="hidden" name="password" value="${reg.password}">
                            <input type="hidden" name="otp" value="${reg.otp}">

                            <div class="mb-3">
                                <label for="userotp" class="form-label fw-bold">Enter OTP</label>
                                <input type="text" id="userotp" name="userotp" class="form-control text-center" 
                                       placeholder="Enter 6-digit OTP" maxlength="6" required>
                            </div>

                            <button type="submit" class="btn btn-success w-100">Verify OTP</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
