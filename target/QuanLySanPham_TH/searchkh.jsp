<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/4/2021
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="searchkh" method="get">
    <input type="text" name="name" value="tên sp ">
    <input type="submit" value="Search">
</form>
<table border="1">
    <thead>
    <th>MAKH</th>
    <th>TENKH</th>
    <th>DIACHI</th>
    <th>SDT</th>
    <th>NGAYSINH</th>
    <th>TAIKHOAN</th>
    <th>UPDATE</th>
    <th>DELETE</th>
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
            <td><a href="updatekh?id=${list.maKh}">Update</a></td>
            <td><a href="deletekh?id=${list.maKh}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
