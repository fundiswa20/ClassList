<%-- 
    Document   : store
    Created on : Jun 8, 2024, 11:34:02 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Student Details Page</title>
    </head>
    <body>
        <h1>Store Student Details</h1>
        <p>
            Please enter the following details:
        </p>
          
        <form action="StoreStudentServlet.do" method="POST" enctype="multipart/form-data">
            <table id="table">
                <tr>
                    <td>Photo:</td>
                    <td><input type="file" name="image"></td>
                </tr>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" required=""></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age" required=""></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select> 
                    </td>
                </tr>
                <tr id="sub">
                    <td>Subject(s)</td>
                    <td><input type="text" name="subject" required=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><input type="button" value="Add Subject" onclick="addModule()"></td>
                    <td><input type="submit" value="Add Student"></td>
                </tr>
            </table>
        </form>
        <script>
            function addModule(){
                var table = document.getElementById('table');//get 1st table element
                var sub = document.getElementById('sub').cloneNode(true);//get the tr(row) element - including its child elements                               
                
                sub.removeAttribute('id'); //remove tr(row) element id
                
                var input = sub.querySelector('input[type="text"]'); //get input of tr(row) element
                
                input.removeAttribute('id'); //remove id from input element
                input.value = '';//set value of input element to an empty string
                
                table.appendChild(sub);//add a new row for module
            }
        </script>
    </body>
</html>
