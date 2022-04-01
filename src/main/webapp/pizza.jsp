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
    <form method="POST">
        <div>
            <select class="form-select" aria-label="Default select example" name="crust">
                <option selected>Select your crust</option>
                <option value="Regular">Regular Crust</option>
                <option value="Thin">Thin Crust</option>
                <option value="Stuffed">Stuffed Crust</option>
            </select>
        </div>
        <div>
            <select class="form-select" aria-label="Default select example" name="sauce">
                <option selected>Select your sauce</option>
                <option value="Light">Light Sauce</option>
                <option value="Regular">Regular Sauce</option>
                <option value="Lots">Lots O Sauce</option>
            </select>
        </div>
        <div>
            <select class="form-select" aria-label="Default select example" name="size">
                <option selected>Select your size</option>
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
            </select>
        </div>
        <div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="pepperoni" id="Pepperoni" name="toppings">
                <label class="form-check-label" for="pepperoni">
                    Pepperoni
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="bacon" id="Bacon" name="toppings">
                <label class="form-check-label" for="bacon">
                    Bacon
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="tomatoes" id="Tomatoes" name="toppings">
                <label class="form-check-label" for="tomatoes">
                    Tomatoes
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="black olives" id="Black Olives" name="toppings">
                <label class="form-check-label" for="Black Olives">
                    Black Olives
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="onions" id="Onions" name="toppings">
                <label class="form-check-label" for="onions">
                    Onions
                </label>
            </div>
        </div>
        <div class="input-group">
            <span class="input-group-text">Delivery Address</span>
            <textarea class="form-control" aria-label="With textarea" name="address"></textarea>
        </div>
        <div>
            <input class="btn btn-primary" type="submit" value="Submit">
        </div>
    </form>
</div>
</body>
</html>
