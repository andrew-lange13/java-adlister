<%--
  Created by IntelliJ IDEA.
  User: andrewlange
  Date: 4/1/22
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value=""/>
    </jsp:include>
    <title>Color Picker</title>
</head>
<body>
<%@include file="partials/navbar.jsp" %>
<form action="" method="post">
    <div class="input-group">
        <span class="input-group-text">Enter a color</span>
        <input type="text" aria-label="Enter Color" class="form-control" name="color">
    </div>
</form>
</body>
</html>
