<%-- 
    Document   : view_all
    Created on : Jun 10, 2024, 5:14:36 PM
    Author     : USER
--%>

<%@page import="za.ac.tut.model.entities.Subject"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students Page</title>
    </head>
    <body>
        <h1>View All Students</h1>
        
        <%
            List<Student> s = (List<Student>)request.getAttribute("studs");
        %>
        <%
            for(int i = 0 ; i < s.size();i++)
            {
                String photo = "data:image;base64,"+ Base64.getEncoder().encodeToString(s.get(i).getPhoto());
                String name = s.get(i).getName();
                String surname = s.get(i).getSurname();
                Long studNum = s.get(i).getId();
                Integer age =  s.get(i).getAge();
                Character gender = s.get(i).getGender();
                List<Subject> sub = s.get(i).getSubjects();
                String[] subjects = new String[sub.size()];
                
              for(int x = 0 ; x < sub.size();x++)
              {
                  subjects[x] = sub.get(x).getCode();
              }
                
            String modules = String.join("#", subjects);
        %>
        <table>
            <tr>
                <td> Photo:  </td>
                <td><img src="<%=photo%>" width="95px" height="95px" alt="student photo"/></td>
            </tr>
            <tr>
                <td> Student Number:  </td>
                <td><%=studNum%></td>
            </tr>
            <tr>
                <td> Name:  </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td> Surname:  </td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td> Gender:  </td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td> Age:  </td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td> Module(s):  </td>
                <td><%=modules%></td>
            </tr>
            <tr>
                <td>====================================================== </td>
                
            </tr>
        </table>
        <%
            }
        %>
        <p>
                Click <a href="menu.jsp">here</a> to go to menu or 
                <a href="index.html">here</a>
            </p>
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
