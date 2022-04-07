<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
    <title>Register</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<h1>Register Yo Self!!!</h1>
<form method="POST">
    <div class="form-group">
        <label for="username">Username</label>
        <input id="username" name="username" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input id="email" name="email" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input id="password" name="password" class="form-control" type="password">
    </div>
    <div class="form-group">
        <label for="confirm-password">Confirm Password</label>
        <input id="confirm-password" name="confirm-password" class="form-control" type="password">
    </div>
    <input type="submit" class="btn btn-primary btn-block" value="Register">
</form>
</body>
</html>
