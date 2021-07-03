<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <thead>
    <th>MASP</th>
    <th>TENSP</th>
    <th>MOTA</th>
    <th>GIABAN</th>
    <th>SOLUONG</th>
    </thead>
    <tbody>
    <c:forEach items="${spsv}" var="list">
        <tr>
            <td>${list.maSp}</td>
            <td>${list.tenSp}</td>
            <td>${list.moTa}</td>
            <td>${list.giaBan}</td>
            <td>${list.soLuong}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/viewkhachhang"> click view Khách Hàng</a>
</body>
</html>
