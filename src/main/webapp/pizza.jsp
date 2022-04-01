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
<div>
    <select class="form-select" aria-label="Default select example">
        <option selected>Select your crust</option>
        <option value="1">Regular Crust</option>
        <option value="2">Thin Crust</option>
        <option value="3">Stuffed Crust</option>
    </select>
</div>
<div>
    <select class="form-select" aria-label="Default select example">
        <option selected>Select your sauce</option>
        <option value="1">Light Sauce</option>
        <option value="2">Regular Sauce</option>
        <option value="3">Lots O Sauce</option>
    </select>
</div>
<div>
    <select class="form-select" aria-label="Default select example">
        <option selected>Select your size</option>
        <option value="1">Small</option>
        <option value="2">Medium</option>
        <option value="3">Large</option>
    </select>
</div>
<div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
        <label class="form-check-label" for="defaultCheck1">
            Default checkbox
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" disabled>
        <label class="form-check-label" for="defaultCheck2">
            Disabled checkbox
        </label>
    </div>
</div>
</body>
</html>
