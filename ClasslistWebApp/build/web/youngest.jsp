<%-- 
    Document   : youngest
    Created on : Jun 10, 2024, 9:29:55 PM
    Author     : USER
--%>

<%@page import="za.ac.tut.model.entities.Subject"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Youngest Student Page</title>
    </head>
    <body>
        <h1>Youngest Student</h1>
        <%
            Student y = (Student)request.getAttribute("youngest");
            String photo = "data:image;base64,"+ Base64.getEncoder().encodeToString(y.getPhoto());
        %>
        <table>
            <tr>
                <td> Photo:  </td>
                <td><img src="<%=photo%>" width="95px" height="95px" alt="student photo"/></td>
            </tr>
            <tr>
                <td> Student Number:  </td>
                <td><%=y.getId()%></td>
            </tr>
            <tr>
                <td> Name:  </td>
                <td><%=y.getName()%></td>
            </tr>
            <tr>
                <td> Surname:  </td>
                <td><%=y.getSurname()%></td>
            </tr>
            <tr>
                <td> Gender:  </td>
                <td><%=y.getGender()%></td>
            </tr>
            <tr>
                <td> Age:  </td>
                <td><%=y.getAge()%></td>
            </tr>
            <tr>
                <td> Module(s):  </td>
                <%
                    List<Subject> s = y.getSubjects();
                    String[] m = new String[s.size()];
                    
                    for(int i =0; i < s.size();i++)
                    {
                       m[i] = s.get(i).getCode();
                       
                    }
                    
                    String module = String.join("#", m);
                %>
                <td><%=module%></td>
                
             </tr>   
        </table>
                <p>
                Click <a href="menu.jsp">here</a> to go to menu or 
                <a href="index.html">here</a> to go to main page.
            </p>
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
