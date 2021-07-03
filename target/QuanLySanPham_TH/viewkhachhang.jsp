<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 10:51 AM
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
    <th>MAKH</th>
    <th>TENKH</th>
    <th>DIACHI</th>
    <th>SDT</th>
    <th>NGAYSINH</th>
    <th>TAIKHOAN</th>
    </thead>
    <tbody>
    <c:forEach items="${khachhang}" var="list">
        <tr>
            <td>${list.maKh}</td>
            <td>${list.tenKh}</td>
            <td>${list.diaChi}</td>
            <td>${list.SDT}</td>
            <td>${list.ngSinh}</td>
            <td>${list.taiKhoan}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
