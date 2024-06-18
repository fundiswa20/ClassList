<%-- 
    Document   : perc_females
    Created on : Jun 10, 2024, 8:24:02 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Average of females Page</title>
     </head>
    <body>
        <h1>Average of females</h1>
        <%
            Double avgFemale = (Double)request.getAttribute("avgFemale");
        %>
        
        <p>
            There is an average of <b><u><%=avgFemale%></u></b> females in the database.
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
