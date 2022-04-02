<%--
  Created by IntelliJ IDEA.
  User: andrewlange
  Date: 4/2/22
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
    <title>Guess Picker</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<h1>Enter a number between 1 and 3</h1>
<form action="" method="post">
    <div class="form-outline">
        <label for="form"></label>
        <input type="text" id="form" class="" name="guess" />
    </div>
</form>
</body>
</html>
