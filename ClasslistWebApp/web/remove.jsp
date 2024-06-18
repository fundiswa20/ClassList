<%-- 
    Document   : remove
    Created on : Jun 10, 2024, 5:59:59 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Page</title>
    </head>
    <body>
        <h1>Remove Student</h1>
        <p>
            Please enter the student number of the student you want to remove:
        </p>
        <form action="RemoveServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student number:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Remove Student"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
