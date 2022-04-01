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
    <option selected>Select your crust</option>
    <option value="1">Regular Crust</option>
    <option value="2">Thin Crust</option>
    <option value="3">Stuffed Crust</option>
</select>
<select class="form-select" aria-label="Default select example">
    <option selected>Select your sauce</option>
    <option value="1">Light Sauce</option>
    <option value="2">Regular Sauce</option>
    <option value="3">Lots O Sauce</option>
</select>
<select class="form-select" aria-label="Default select example">
    <option selected>Select your size</option>
    <option value="1">Small</option>
    <option value="2">Medium</option>
    <option value="3">Large</option>
</select>
</body>
</html>
