<%-- 
    Document   : num_students
    Created on : Jun 10, 2024, 6:07:37 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number of Students Page</title>
    </head>
    <body>
        <h1>Number of Students</h1>
        <%
            Integer num = (Integer)request.getAttribute("num");
        %>
        
        <p>
            There are <b><u><%=num%></u></b> students in the database.
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
