<%@ page import="org.example.demo.session3.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản Lí Danh Sách Sản Phẩm</title>
</head>
<body>
<form action="product" method="post">
    <h1>Quan Li San Pham</h1>

    <h2>Them San Pham</h2>

    <p>ID</p>
    <input type="text" name="id" required>

    <p>Ten san pham</p>
    <input type="text" name="productName" required>

    <p>Gia</p>
    <input type="number" name="price" required>

    <p>Mo ta</p>
    <input type="text" name="description" required>

    <p>So Luong</p>
    <input type="number" name="quantity" required>

    <p>Trang Thai</p>
    <input type="checkbox" name="status"> Con Hang

    <br><br>
    <input type="submit" value="Them san pham">
</form>

<h1>Danh Sach San Pham Da Them: </h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Ten san pham</th>
        <th>Gia</th>
        <th>Mo ta</th>
        <th>So luong</th>
        <th>Trang thai</th>
    </tr>
    </thead>

    <tbody>
    <%
        List<Product> productList = (List<Product>) request.getAttribute("productList");
        if (productList != null) {
            for (Product p : productList) {
    %>
    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getProductName() %></td>
        <td><%= p.getPrice() %></td>
        <td><%= p.getDescription() %></td>
        <td><%= p.getStock() %></td>
        <td><%= p.isStatus() ? "Con Hang" : "Het Hang" %></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>
