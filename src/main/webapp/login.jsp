<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>LOGIN</h1>
<form action="login.jsp" method="post">
    <div>
        <label>
            <input type="text" placeholder="Enter Username" name="uname" required>
        </label>
    </div>
    <br>
    <div>
        <label>
            <input type="password" placeholder="Enter Password" name="psw" required>
        </label>
    </div>
    <br>
    <div>
        <button type="submit">Login</button>
    </div>
</form>
<p>"uname" parameter: <%= request.getParameter("uname") %>
</p>
<p>"psw" parameter: <%= request.getParameter("psw") %>
</p>
<c:when test="${uname} == "admin" ">
    <%response.sendRedirect("/profile.jsp");%>
</c:when>
</body>
</html>
