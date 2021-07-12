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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Seacrh Customer</title>
    </head>
    <body>
    <center>
         <div class="panel-heading">
            <h2 class="text-center">Search Customer</h2>
        </div>
        <form class="form-inline justify-content-center" action="searchkh" method="get">
            <input class="form-control mr-sm-2"  type="text" name="name" value="Enter Name Customer">
            <button class="btn btn-success" type="submit">Search</button>
        </form>
        <table class="table ">
            <thead>
                <tr>
                    <th scope="col">Code Customer</th>
                    <th scope="col">Name Customer</th>
                    <th scope="col">Address Customer</th>
                    <th scope="col">Number Customer</th>
                    <th scope="col">Date of birth Customer</th>
                    <th scope="col">Account Customer</th>
                    <th scope="col">UPDATE </th>
                    <th scope="col">DELETE </th>
                </tr>
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
                        <td><a class="btn btn-success" href="updatekh?id=${list.maKh}">Update</a></td>
                        <td><a class="btn btn-danger" href="deletekh?id=${list.maKh}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </center>

</body>
</html>
