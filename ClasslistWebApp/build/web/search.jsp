<%-- 
    Document   : search
    Created on : Jun 10, 2024, 4:50:00 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student Page</title>
    </head>
    <body>
        <h1>Search Student</h1>
        <p>
            Please enter the student number of the student you are searching for:
        </p>
        <form action="SearchServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student number:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Search Student"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
