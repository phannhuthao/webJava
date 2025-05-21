<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");

    if (username != null && email != null) {
        application.setAttribute("username", username);
        application.setAttribute("email", email);
    }

    String saveUsername = (String) application.getAttribute("username");
    String saveEmail = (String) application.getAttribute("email");
%>
<head>
    <title>BT2: Sử Dụng Biến Ngữ Cảnh</title>
</head>
<body>
<h1>Nhập Thông Tin</h1>

<form>
    <input type="text" name="username" placeholder="Nhap ten...">
    <input type="text" name="email" placeholder="Nhap email...">
    <input type="submit" value="Gui">
</form>

<h1>Hiển Thị Thông Tin</h1>
<p>Tên:<%= saveUsername != null ? saveUsername : "Chưa có thông tin" %></p>
<p>Email:<%= saveEmail != null ? saveEmail : "Chưa có thông tin" %></p>

</body>
</html>
