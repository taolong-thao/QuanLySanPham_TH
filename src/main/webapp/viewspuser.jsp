<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 4:01 PM
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
    <th>DeTail</th>

    </thead>
    <tbody>
    <c:forEach items="${spsv}" var="list">
        <tr>
            <td>${list.maSp}</td>
            <td>${list.tenSp}</td>
            <td>${list.moTa}</td>
            <td>${list.giaBan}</td>
            <td>${list.soLuong}</td>
            <td><a href="detail?sp=${list.maSp}">Detail</a></td>

        </tr>
    </c:forEach>
    </tbody>
    <a href="/searchsanpham.jsp">Search sản phẩm</a>
</table>
<%--<script>--%>
<%--    function deleteSure(maSp) {--%>
<%--        var option = confirm("bạn có chắc muôn xóa ");--%>
<%--        if (option == true) {--%>
<%--            window.location.href = "delete?sp=" + maSp;--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>