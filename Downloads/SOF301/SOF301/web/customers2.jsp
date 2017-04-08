
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers</title>
    </head>
    <body>
        <u><h5>Welcome ^^ ${sessionScope.Username}</h5></u>
        <h1>Customers</h1>
        <br/>
        <br>
        <form action="ControllerCustomers">
            Ten KH:<input type="text" name="txtTenKH" value=""/>
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
            <c:forEach var="rows" items="${listKH}">
                <form action="ControllerCustomers">
                    <tr>
                        <td>${rows.username}</td>
                        <td>${rows.password}</td>
                        <td>${rows.name}</td>
                        <td>${rows.gender}</td>
                        <td>${rows.email}</td>
                        <td>${rows.role}</td>
                        <td>
                            <input type="hidden" name="txtMaKH" value="${rows.username}"/>
                            <input type="submit" name="action" value="Delete"/>
                        </td>
                        <td>
                            <input type="hidden" name="txtusernameE" value="${rows.username}"/>
                            <input type="hidden" name="txtpasswordE" value="${rows.password}"/>
                            <input type="hidden" name="txtnameE" value="${rows.name}"/>
                            <input type="hidden" name="txtgenderE" value="${rows.gender}"/>
                            <input type="hidden" name="txtemailE" value="${rows.email}"/>
                            <input type="hidden" name="txtroleE" value="${rows.role}"/>
                            <input type="submit" name="action" value="Edit"/>
                        </td>
                    </tr>
                </form>
            </c:forEach>
        </table>  
        <a>Insert Customers</a>
        <form action="ControllerCustomers">
            Username: <input type="text" name="txtMaKHin" value=""/><br>
            Pass: <input type="text" name="txtMatKhauin" value=""/><br>
            Name: <input type="text" name="txtTenKHin" value=""/><br>
            Email: <input type="text" name="txtEmailin" value=""/><br>
            Gender: <input type="text" name="txtGenderin" value=""/><br>
            Role: <input type="text" name="txtRolein" value=""/><br>

            <input type="submit" name="action" value="Insert"/>
        </form>
        

    </body>
</html>
