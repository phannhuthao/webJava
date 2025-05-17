<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký vé xe</title>
</head>
<body>
<h2>Form Đăng Ký Vé Xe</h2>
<form action="register-ticket" method="post">
    <input type="text" name="userName" placeholder="Nhập họ và tên...." required><br>
    <input type="text" name="classroom" placeholder="Nhập lớp...." required><br>
    <input type="text" name="type" placeholder="Nhập loại xe...." required><br>
    <input type="text" name="numberCar" placeholder="Nhập biển số xe...." required><br>
    <button type="submit">Đăng ký</button>
</form>
</body>
</html>
