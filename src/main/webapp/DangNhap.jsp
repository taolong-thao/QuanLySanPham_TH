<%-- 
    Document   : DangNhap
    Created on : Jul 3, 2021, 7:50:09 PM
    Author     : Quang Vinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Page Login</title>
    </head>
    <body>
    <center>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Login</h2>
                </div>
                <div class="panel-body col-sm-4">
                    <form class="form-signin" action="dangnhap" method="post">
                        <div class="form-label-group">
                            <label for="username">Enter Your Username</label>
                            <input required="true" type="username" class="form-control" id="username" name="username"/>
                        </div>
                        <div class="form-label-group">
                            <label for="password">Enter Your Password</label>
                            <input required="true" type="password" class="form-control" id="pwd" name="password"/>
                        </div>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Login Now</button>
                    </form>
                </div>
            </div>
        </div>
    </center>
</body>
</html>