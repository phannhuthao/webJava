<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String strA = request.getParameter("numberA");
    String strB = request.getParameter("numberB");
    int result = 0;

    if (strA != null && strB != null && !strA.isEmpty() && !strB.isEmpty()) {
        try {
            int numberA = Integer.parseInt(strA);
            int numberB = Integer.parseInt(strB);
            result = numberA + numberB;
        } catch (NumberFormatException e) {
          e.printStackTrace();
        }
    }
%>
<html>
<head>
    <title>BT4: Tính Toán Cơ Bản</title>
</head>
<body>
<h1>Phép Cộng Hai Số</h1>

<form method="get">
    <input type="number" name="numberA" placeholder="Nhập số A..." value="<%= strA != null ? strA : "" %>">
    <input type="number" name="numberB" placeholder="Nhập số B..." value="<%= strB != null ? strB : "" %>">
    <input type="submit" value="=">
</form>

<p>Kết quả: <%= result %></p>
</body>
</html>
