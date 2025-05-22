<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BT1</title>
    <style>
        table {
            width: 60%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #3498db;
            color: white;
        }
    </style>
</head>
<body>
<h2 style="text-align: center;">Danh sách sản phẩm</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${products}">
        <tr>
            <td>${p.id}</td>
            <td>${p.productName}</td>
            <td>${p.price}</td>
            <td>${p.description}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
