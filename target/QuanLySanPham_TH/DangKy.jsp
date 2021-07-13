<%-- 
    Document   : DangKy
    Created on : Jul 3, 2021, 7:50:19 PM
    Author     : Quang Vinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Page Register</title>
    </head>
    <body>
    <center>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Register Account Login</h2>
                </div>
                <div class="panel-body col-sm-4">
                    <form class="form-signin" action="DangKy" method="post">
                        <div class="form-label-group">
                            <label for="username">Enter Username</label>
                            <input required="true" type="text" class="form-control" id="username" name="username"/>
                        </div>
                        <div class="form-label-group">
                            <label for="password">Enter Password</label>
                            <input required="true" type="password" class="form-control" id="password" name="password"/>
                        </div>
                        <div class="form-label-group">
                            <label for="ngSinh">Enter Your Birthday</label>
                            <input type="date" class="form-control" id="ngSinh" name="ngSinh"/>
                        </div>
                        <div class="form-label-group">
                            <label for="diaChi">Enter Address</label>
                            <input required="true" type="text" class="form-control" id="diaChi" name="diaChi"/>
                        </div>
                        <div class="form-label-group">
                            <label for="SDT">Phone number</label>
                            <input type="text" class="form-control" id="SDT" name="SDT"/>
                        </div>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </center>
    </body>
</html>
