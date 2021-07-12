<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 7:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="search" method="get">
    <input type="text" name="ten" value="tên sp ">
    <input type="submit" value="Search">
</form>
<table border="1">
    <thead>
    <th>MASP</th>
    <th>TENSP</th>
    <th>MOTA</th>
    <th>GIABAN</th>
    <th>SOLUONG</th>
    <th>UPDATE</th>
    <th>DELETE</th>
    </thead>
    <tbody>
    <c:forEach items="${listsearch}" var="list">
        <tr>
            <td>${list.maSp}</td>
            <td>${list.tenSp}</td>
            <td>${list.moTa}</td>
            <td>${list.giaBan}</td>
            <td>${list.soLuong}</td>
            <td><a href="update?sp=${list.maSp}">Update</a></td>
            <td><a href="delete?sp=${list.maSp}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
