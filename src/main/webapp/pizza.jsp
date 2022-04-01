<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value=""/>
    </jsp:include>
    <title>Pizza Order</title>
</head>
<body>
<%@include file="partials/navbar.jsp" %>
<h1>Create Your Pizza</h1>
<select class="form-select" aria-label="Default select example">
    <option selected>Open this select menu</option>
    <option value="1">One</option>
    <option value="2">Two</option>
    <option value="3">Three</option>
</select>
</body>
</html>
