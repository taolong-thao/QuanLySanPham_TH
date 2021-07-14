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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Seacrh Product</title>
    </head>
    <body>
    <center>
        <div class="panel-heading">
            <h2 class="text-center">Search Product</h2>
        </div>
        <form class="form-inline justify-content-center" action="search" method="get">
            <input class="form-control mr-sm-2" type="text" name="ten" value="Enter Name Product">
            <button class="btn btn-success" type="submit">Search</button>
        </form>
        <table class="table ">
            <thead>
                <tr>
                    <th scope="col">Code Product</th>
                    <th scope="col">Name Product</th>
                    <th scope="col">Address Product</th>
                    <th scope="col">Price Product</th>
                    <th scope="col">Amount Product</th>
                    <th scope="col">DeTail Product</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listsearch}" var="list">
                    <tr>
                        <td>${list.maSp}</td>
                        <td>${list.tenSp}</td>
                        <td>${list.moTa}</td>
                        <td>${list.giaBan}</td>
                        <td>${list.soLuong}</td>
                        <td><a class="btn btn-success" href="detail?sp=${list.maSp}">Detail</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </center>
</body>
</html>