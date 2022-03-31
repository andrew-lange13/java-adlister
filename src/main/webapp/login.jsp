<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");
        if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password")){
            response.sendRedirect("/profile");
        }
    }
%>
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
</body>
</html>
