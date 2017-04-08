<%-- 
    Document   : products
    Created on : Sep 23, 2016, 10:34:01 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Products</h1>
        <form action="ControllerProducts">
            nhap ten sp:<input type="text" name="txtTenSP" value=""/>
            <input type="submit" name="action" value="Search"/> </form>
        <br/>
        <table border="1">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                <tr>
                    <td>${rows.code}</td>
                    <td>${rows.name}</td>
                    <td>${rows.price}</td>
                    <c:url var="del" value="ControllerProducts">
                        <c:param name="action" value="Edit"/>
                        <c:param name="txtCode" value="${rows.code}"/>
                        <c:param name="txtName" value="${rows.name}"/>
                        <c:param name="txtPrice" value="${rows.price}"/>
                    </c:url>
                    <td><a href="${del}">Edit</td>
                    <td>
                        <input type="hidden" name="txtCode" value="${rows.code}"/>
                        <input type="submit" name="action" value="Delete"/>
                    </td>
                </tr>
                </form>
            </c:forEach>
        </table>  
        <br/>
    </body>
</html>
