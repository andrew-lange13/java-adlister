<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../WEB-INF/partials/head.jsp"/>
    <title>Profile</title>
</head>
<body>
<jsp:include page="../WEB-INF/partials/navbar.jsp"/>
<h1>Hello, ${sessionScope.user.username}</h1>
<h3>I like turtles!!</h3>
</body>
</html>
