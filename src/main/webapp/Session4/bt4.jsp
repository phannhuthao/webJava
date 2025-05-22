<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>BT4 - Danh sách sản phẩm</title>
</head>
<body>
<h2>Danh sách sản phẩm</h2>

<c:choose>
  <c:when test="${not empty products}">
    <table border="1" cellpadding="5">
      <thead>
      <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Description</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="product" items="${products}">
        <tr>
          <td>${product.id}</td>
          <td>${product.name}</td>
          <td>${product.price}</td>
          <td>${product.description}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </c:when>

  <c:otherwise>
    <p style="color: red;">Sản phẩm không có thông tin</p>
  </c:otherwise>
</c:choose>
</body>
</html>
