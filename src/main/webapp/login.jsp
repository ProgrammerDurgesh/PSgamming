<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
</head>
<body>
    <h1>Login Form</h1>
    <form action="${pageContext.request.contextPath}/login" method="post">
        User email: <input type="text" name="email"><br>
        Password : <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
