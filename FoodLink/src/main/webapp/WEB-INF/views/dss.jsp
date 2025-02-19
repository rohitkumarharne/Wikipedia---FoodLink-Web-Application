<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Error</title>
</head>
<body>
    <h2>❌ Invalid OTP!</h2>
    <p>Please enter the correct OTP.</p>
    <a href="validateOTP?fullname=${reg.fullname}&ename=${reg.Email}&username=${reg.username}&password=${reg.password}&otp=${reg.otp}">Try Again</a>
</body>
</html>
