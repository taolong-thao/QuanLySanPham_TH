<%-- 
    Document   : DangKy
    Created on : Jul 3, 2021, 7:50:19 PM
    Author     : Quang Vinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dang Ky</title>
</head>
<body>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h2 class="text-center">Dang Ky Tai Khoan</h2>
        </div>
        <div class="panel-body">
            <form action="DangKy" method="post">
                <div class="form-group">
                    <label for="username">UserName:</label>
                    <input required="true" type="text" class="form-control" id="username" name="username"/>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input required="true" type="password" class="form-control" id="password" name="password"/>
                </div>
                <div class="form-group">
                    <label for="tenKh">Ho Ten:</label>
                    <input required="true" type="text" class="form-control" id="tenKh" name="tenKh"/>
                </div>
                <div class="form-group">
                    <label for="ngSinh">Ngay Sinh:</label>
                    <input type="date" class="form-control" id="ngSinh" name="ngSinh"/>
                </div>
                <div class="form-group">
                    <label for="diaChi">Dia Chi:</label>
                    <input required="true" type="text" class="form-control" id="diaChi" name="diaChi"/>
                </div>
                <div class="form-group">
                    <label for="SDT">SDT:</label>
                    <input type="text" class="form-control" id="SDT" name="SDT"/>
                </div>
                <button class="btn btn-success">Dang Ky</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
