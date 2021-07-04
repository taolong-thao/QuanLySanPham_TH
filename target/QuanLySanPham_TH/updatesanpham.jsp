<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 5:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update" method="post">
    <input type="hidden" name="idSp" value="${sp.maSp}">
    <input type="text" name="tenSp" value="${sp.tenSp}">
    <input type="text" name="moTa" value="${sp.moTa}">
    <input type="number" name="giaBan" value="${sp.giaBan}">
    <input type="number" name="soLuong" value="${sp.soLuong}">
    <input type="submit" value="update">
</form>
</body>
</html>
