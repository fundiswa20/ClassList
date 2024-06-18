<%-- 
    Document   : males
    Created on : Jun 10, 2024, 8:59:54 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Percentage of Males Page</title>
    </head>
    <body>
        <h1>Percentage of Males</h1>
        <%
            Integer perc = (Integer)request.getAttribute("perc");
        %>
        <p>
            Percentage of males in the database: <b><u><%=perc%>%</u></b> 
        </p>
            <p>
                Click <a href="menu.jsp">here</a> to go to menu or 
                <a href="index.html">here</a>
            </p>
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
