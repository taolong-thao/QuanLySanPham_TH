<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/4/2021
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h2 class="text-center">Dang Ky Tai Khoan</h2>
        </div>
        <div class="panel-body">
            <form action="updatekh" method="post">
                <input type="hidden" name="id" value="${list.maKh}">
                <div class="form-group">
                    <label for="tenKh">Ho Ten:</label>
                    <input required="true" type="text" class="form-control" id="tenKh" name="tenKh"
                           value="${list.tenKh}"/>
                </div>
                <div class="form-group">
                    <label for="ngSinh">Ngay Sinh:</label>
                    <input type="date" class="form-control" id="ngSinh" name="ngSinh" value="${list.ngSinh}"/>
                </div>
                <div class="form-group">
                    <label for="diaChi">Dia Chi:</label>
                    <input required="true" type="text" class="form-control" id="diaChi" name="diaChi"
                           value="${list.diaChi}"/>
                </div>
                <div class="form-group">
                    <label for="SDT">SDT:</label>
                    <input type="text" class="form-control" id="SDT" name="SDT" value="${list.SDT}"/>
                </div>
                <button class="btn btn-success">Update</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
