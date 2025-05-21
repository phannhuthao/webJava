<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    boolean submitted = request.getMethod().equalsIgnoreCase("POST");
%>
<html>
<head>
    <title>BT5: Xây Dựng Biểu Mẫu Đăng Ký</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            width: 400px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin: 100px auto;
            overflow: hidden;
        }
        .header {
            background: #2c7ac9;
            color: white;
            padding: 15px;
            font-size: 20px;
            position: relative;
        }
        form {
            padding: 20px;
        }
        p {
            margin: 10px 0 5px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-bottom: 1px solid #ccc;
            outline: none;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #2c7ac9;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2261a6;
        }
        .message {
            padding: 20px;
            text-align: center;
            background: #e0ffe0;
            border-top: 1px solid #ccc;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">Webrelaration</div>
    <form method="post">
        <p>Username:</p>
        <input type="text" name="username" required>

        <p>Password:</p>
        <input type="password" name="password" required>

        <p>Email:</p>
        <input type="text" name="email" required>

        <input type="submit" value="Register">
    </form>

    <% if (submitted && username != null && password != null && email != null) { %>
    <div class="message">
        <p><strong>Đăng ký thành công!</strong></p>
        <p>Username: <%= username %></p>
        <p>Email: <%= email %></p>
    </div>
    <% } %>
</div>
</body>
</html>
