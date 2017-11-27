<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>Project08 Home</h1>
<form action="${pageContext.request.contextPath}/save" method="post">
    <label>
        Название товара:
        <input type="text" name="name" id="name"/>
    </label><br>
    <label>
        Описание товара:
        <textarea name="description" id="description"></textarea>
    </label>
    <label><br>
        Цена:
        <input type="number" name="price" id="price" min="0" step="0.01"/>
    </label><br>
    <button type="submit">Сохранить</button>
</form>
<a href="${pageContext.request.contextPath}/all">Все товары</a>
</body>
</html>
