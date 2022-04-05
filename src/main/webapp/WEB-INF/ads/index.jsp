<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp"/>
    <title>Title</title>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>
<h1>Here are all the products:</h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.title}</h2>
        <h3>${ad.description}</h3>
    </div>
</c:forEach>
</body>
</html>
