<%-- 
    Document   : login
    Created on : Sep 23, 2016, 11:11:42 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="ControllerCustomers">
            UserName: <input type="text" name="txtUser" value=""></br>
            Password: <input type="password" name="txtPass" value=""></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" name="action" value="Reset"/>
        </form>
    </body>
</html>
