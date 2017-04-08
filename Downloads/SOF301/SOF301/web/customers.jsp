<%-- 
    Document   : customer
    Created on : Sep 23, 2016, 11:28:48 AM
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="fpt.dao.CustomerDAO"%>
<%@page import="fpt.entity.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers</title>
    </head>
    <body>
        <form action="ControllerCustomers">
            <h1>Welcome , </h1>
            Name: <input type="text" name="txtName" value=""/><br>
            <input type="submit" name="action" value="Search"/>
        </form>

        <br/>
        <table border="1">
            
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Name</td>
                <td>Gender</td>
                <td>Email</td>
                <td>Role</td>
                <td>Delete</td>
                <td>Update</td>
            </tr>
           
            <c:forEach items="${listKH}" var="rows" >
                <form action="ControllerCustomers">
                    <tr>
                       
                        <td>${rows.username}</td>
                        <td>${rows.username}</td>
                        <td>${rows.username}</td>
                        <td>${rows.username}</td>
                        <td>${rows.username}</td>
                        <td>${rows.username}</td>
                        <td>
                            
                            
                        </td>
                        <td>
                            
                            
                        </td>
                    
                    </tr>
                 </form>
            </c:foreach>
         
    </table>
</body>
</html>
