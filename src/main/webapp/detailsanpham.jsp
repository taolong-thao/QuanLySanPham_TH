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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Detail Product</title>
    </head>
    <body>
    <center>
        <div class="panel-heading">
            <h2 class="text-center">See Product Details</h2>
        </div>
        <table class="table ">
            <thead>
                <tr>
                    <th scope="col">Code Product</th>
                    <th scope="col">Name Product</th>
                    <th scope="col">Description Product</th>
                    <th scope="col">Price Product</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">${sp.maSp}</th>
                    <td>${sp.tenSp}</td>
                    <td>${sp.moTa}</td>
                    <td>${sp.giaBan}</td>
                </tr>
            </tbody>
        </table>
    </center>
</body>
</html>