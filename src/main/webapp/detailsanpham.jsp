<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/4/2021
  Time: 9:26 AM
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
    </thead>
    <tbody>
    <tr>
        <td>${sp.maSp}</td>
        <td>${sp.tenSp}</td>
        <td>${sp.moTa}</td>
        <td>${sp.giaBan}</td>
    </tr>
    </tbody>
</table>
</body>
</html>
