<%-- 
    Document   : store_outcome
    Created on : Jun 10, 2024, 1:53:20 PM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Subject"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Student Outcome Page</title>
    </head>
    <body>
        <h1>Store Student Outcome</h1>
        
        <p style="color: plum">
            The details of the following student have been persisted successfully!!
        </p>
        <%
            Student student = (Student)request.getAttribute("student");
            String photo = "data:image;base64," + Base64.getEncoder().encodeToString(student.getPhoto());
            
        %>
        
        <table>
            <tr>
                <td> Photo:  </td>
                <td><img src="<%=photo%>" width="95px" height="95px" alt="student photo"/></td>
            </tr>
            <tr>
                <td> Student Number:  </td>
                <td><%=student.getId()%></td>
            </tr>
            <tr>
                <td> Name:  </td>
                <td><%=student.getName()%></td>
            </tr>
            <tr>
                <td> Surname:  </td>
                <td><%=student.getSurname()%></td>
            </tr>
            <tr>
                <td> Gender:  </td>
                <td><%=student.getGender()%></td>
            </tr>
            <tr>
                <td> Age:  </td>
                <td><%=student.getAge()%></td>
            </tr>
            <tr>
                <td> Module(s):  </td>
                <%
                    List<Subject> s = student.getSubjects();
                    String[] modules = new String[s.size()];
                    
                    //populate array
                    for(int i = 0 ; i < s.size();i++ )
                    {
                         modules[i] = s.get(i).getCode();
                    }
                    
                    String subject = String.join("#", modules);
                    
                %>
                <td><%=subject%></td>
            </tr>
        </table>
            
            <p>
                Click <a href="menu.jsp">here</a> to go to menu or 
                <a href="index.html">here</a>
            </p>
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
