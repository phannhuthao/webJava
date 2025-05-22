<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BT5 - Tìm kiếm sản phẩm</title>
</head>
<body>
<h2>Tìm kiếm sản phẩm theo ID</h2>

<form action="bt5d" method="post">
    <input type="text" name="id" placeholder="Nhập ID...">
    <input type="submit" value="Tìm kiếm">
</form>

<c:choose>
    <c:when test="${product}">
        <h3>Thông tin sản phẩm:</h3>
        <p><strong>ID:</strong> ${product.id}</p>
        <p><strong>Tên:</strong> ${product.name}</p>
        <p><strong>Giá:</strong> ${product.price}</p>
        <p><strong>Mô tả:</strong> ${product.description}</p>
    </c:when>
    <c:otherwise>
        <c:if test="${param.id}">
            <p style="color:red;">Sản phẩm không tìm thấy.</p>
        </c:if>
    </c:otherwise>
</c:choose>
</body>
</html>
