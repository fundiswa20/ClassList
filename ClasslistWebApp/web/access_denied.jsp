<%-- 
    Document   : access_denied
    Created on : Jun 10, 2024, 9:48:19 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authorization Page</title>
    </head>
    <body>
        <h1 style="color: red">Access Denied!</h1>
        <p>
            You are not authorized to access this service.
        </p>
        <p>
                Click <a href="menu.jsp">here</a> to go to menu or 
                <a href="index.html">here</a> to go to main page.
            </p>
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
