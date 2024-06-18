<%-- 
    Document   : login_error
    Created on : Jun 10, 2024, 9:47:03 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Login Error Page</title>
    </head>
    <body>
        <h1>Login Error</h1>
        <p style="color: red">
            Incorrect credentials!!! Please enter the correct details:
        </p>
        <form action="j_security_check" method="POST">
            <table border="0">
            
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="j_username" required=""></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="j_password" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="LOGIN"></td>
                </tr>
                
            </table>

        </form>
    </body>
</html>
