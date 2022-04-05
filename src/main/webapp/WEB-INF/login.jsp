<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="../WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title>Login</title>
</head>
<body>
<%@include file="../WEB-INF/partials/navbar.jsp"%>
<h1>LOGIN</h1>
<form method="post" action="">
    <div>
        <label>
            <input type="text" placeholder="Enter Username" name="username" required>
        </label>
    </div>
    <br>
    <div>
        <label>
            <input type="password" placeholder="Enter Password" name="password" required>
        </label>
    </div>
    <br>
    <div>
        <button type="submit">Login</button>
    </div>
</form>
</body>
</html>
