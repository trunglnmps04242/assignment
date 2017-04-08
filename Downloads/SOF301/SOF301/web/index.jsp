 <%-- 
    Document   : index
    Created on : Sep 30, 2016, 8:28:48 AM
    Author     : HP
--%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Moblie</title>
    </head>
    <body>
        <h1>Products!</h1>
    <table border="1">
        <tr>
            <td>MA</td>
            <td>TEN</td>
            <td>GIA</td>
        </tr>
        <%
            Products listSP = new Products();
            List<Product> list = listSP.showProduct("");
            for (Product sp : list) {
                out.print("<tr><td>" + sp.getCode()
                        + "</td><td>" + sp.getName()
                        + "</td><td>" + sp.getPrice()
                        + "</td></tr>");

            }

        %>

    </table>
</body>
</html>
