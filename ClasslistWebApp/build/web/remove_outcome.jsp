<%-- 
    Document   : remove_outcome
    Created on : Jun 10, 2024, 6:03:00 PM
    Author     : USER
--%>

<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Outcome Page</title>
    </head>
    <body>
        <h1>Remove Student Outcome</h1>
        <%
            Student s = (Student)request.getAttribute("student");
        %>
        <p>
            Student <b><u><%=s.getName()%></u></b> <b><u><%=s.getSurname()%></u></b>(<b><u><%=s.getId()%></u></b>) has been removed!!
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
