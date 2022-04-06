<%--
  Created by IntelliJ IDEA.
  User: andrewlange
  Date: 4/6/22
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="album" items="${albumListView}">
    <div class="album">
    </div>
</c:forEach></body>
</html>
