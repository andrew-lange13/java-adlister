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
        <input class="form-check-input" type="checkbox" value="" id="Pepperoni">
        <label class="form-check-label" for="Pepperoni">
            Pepperoni
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="Bacon">
        <label class="form-check-label" for="Bacon">
            Bacon
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="Tomatoes">
        <label class="form-check-label" for="Tomatoes">
            Tomatoes
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="Black Olives">
        <label class="form-check-label" for="Black Olives">
            Black Olives
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="Onions">
        <label class="form-check-label" for="Onions">
            Onions
        </label>
    </div>
</div>
<div class="input-group">
    <span class="input-group-text">Delivery Address</span>
    <textarea class="form-control" aria-label="With textarea"></textarea>
</div>
</body>
</html>
