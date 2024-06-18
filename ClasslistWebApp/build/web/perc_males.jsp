<%-- 
    Document   : perc_males
    Created on : Jun 10, 2024, 8:09:34 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Average percentage of males Page</title>
     </head>
    <body>
        <h1>Average percentage of males</h1>
        <%
            Double avgMale = (Double)request.getAttribute("avgMale");
        %>
        
        <p>
            There is an average of <b><u><%=avgMale%></u></b> males in the database.
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
