<%-- 
    Document   : menu
    Created on : Jun 8, 2024, 11:30:14 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <table>
            <tr><td> <input type="button" value="Store student details" onclick="location.href='store.jsp';"></td></tr>
            <tr>
                <td>
                      <input type="button" value="Search for student" onclick="location.href='search.jsp';"> 
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="View all students" onclick="location.href='ViewStudetntsServlet.do';">                  
                </td>
            </tr>
            <tr>
                <td>
                   <input type="button" value="Remove student" onclick="location.href='remove.jsp';">                   
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Display number of students" onclick="location.href='NumStudentsServlet.do';">                    
                </td>
            </tr>
            <tr>
                <td>
                   <input type="button" value="Get percentage of males" onclick="location.href='PercMalesServlet.do';">                    
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Get percentage of females" onclick="location.href='PercFemalesServlet.do';">                    
                </td>
            </tr>
            <tr>
                <td>
                        <input type="button" value="Get average of males" onclick="location.href='AvgMalesServlet.do';">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Get average of females" onclick="location.href='AvgFemalesServlet.do';">                    
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Get youngest student" onclick="location.href='YoungestServlet.do';">                    
                </td>
            </tr>
        </table>
    </body>
</html>
