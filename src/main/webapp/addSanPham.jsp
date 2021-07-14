<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Page Add Product</title>
    </head>
    <body>
    <center>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Add Product</h2>
                </div>
                <div class="panel-body col-sm-4">
                    <form class="form-signin" action="add" method="post">
                        <div class="form-label-group">
                            <label for="username">Enter Name Product</label>
                            <input required="true" value="tenSp" type="text" class="form-control" name="tenSp"/>
                        </div>
                        <div class="form-label-group">
                            <label for="password">Enter Description</label>
                            <input required="true" class="form-control" type="text" name="moTa" value="moTa"/>
                        </div>
                        <div class="form-label-group">
                            <label for="username">Enter Price Product</label>
                            <input required="true" class="form-control" type="number" name="giaBan" value="1"/>
                        </div>
                        <div class="form-label-group">
                            <label for="password">Enter Amount</label>
                            <input required="true" class="form-control" type="number" name="soLuong" value="1"/>
                        </div>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Add">Add Now</button>
                    </form>
                </div>
            </div>
        </div>
    </center>
</body>
</html>