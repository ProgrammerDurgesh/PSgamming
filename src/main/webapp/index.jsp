<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>
<head>
    <title>Signup</title>
</head>
<body>
    <h1>Signup Form</h1>
    <form action="${pageContext.request.contextPath}/signup" method="post">
        First Name: <input type="text" name="firstName"><br>
        Last Name: <input type="text" name="lastName"><br>
        Email: <input type="email" name="email"><br>
        Country: <input type="text" name="country"><br>
        City: <input type="text" name="city"><br>
        Mobile Number: <input type="text" name="mobileNumber"><br>
        Password : <input type="text" name="password"><br>
        <input type="submit" value="Sign Up">
    </form>
</body>
</html>
