<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BT2</title>
</head>
<body>
<form action="bt2" method="post">
    <input type="text" name="username" placeholder="Nhap ten...">
    <input type="text" name="password" placeholder="Nhap password...">
    <button type="submit">Đăng nhập</button>
</form>

<c:if test="${not empty message}">
    <p style="color: ${isSuccess ? 'green' : 'red'}">${message}</p>
</c:if>
</body>
</html>
