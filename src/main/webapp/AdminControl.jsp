<%-- 
    Document   : AdminControl
    Created on : Jul 6, 2021, 7:14:52 PM
    Author     : Quang Vinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Admin Control</title>
    </head>
    <body>
    <center><h2 class="text-muted">Chọn yêu cầu quản lý</h2></center>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary">
        <div class="navbar-collapse collapse justify-content-center order-2" id="collapsingNavbar">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link " href="/viewkhachhang"> click view Khách Hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/search">Tìm Kiếm san phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/searchkh">Tìm Kiếm Khách Hàng</a>
                </li>
            </ul>
        </div>
    </nav>
</body>