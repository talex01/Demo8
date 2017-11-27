<%@ page import="org.project08.model.Goods" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Product</title>
</head>
<body>
<h1>ALL PRODUCT</h1>

<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
    </tr>
    <%
        List<Goods> goods = (List<Goods>) request.getAttribute("goods");
        if (goods != null) {
            for (Goods g : goods) {
    %>
    <tr>
        <td><%= g.getId() %>
        </td>
        <td><%= g.getName() %>
        </td>
        <td><%= g.getDescription() %>
        </td>
        <td><%= g.getPrice() %>
        </td>
    </tr>
    <% }
    } %>
</table>


</body>
</html>
