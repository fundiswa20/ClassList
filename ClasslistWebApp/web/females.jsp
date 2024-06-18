<%-- 
    Document   : females
    Created on : Jun 10, 2024, 9:03:45 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Percentage of Females Page</title>
    </head>
    <body>
        <h1>Percentage of Females</h1>
        <%
            Integer perc = (Integer)request.getAttribute("perc");
        %>
        <p>
            Percentage of females in the database: <b><u><%=perc%>%</u></b> 
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
