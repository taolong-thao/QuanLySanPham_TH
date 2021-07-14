<%--
  Created by IntelliJ IDEA.
  User: dfean
  Date: 7/3/2021
  Time: 5:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Update Product</title>
    </head>
    <body>
    <center>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Update Product</h2>
                </div>
                <div class="panel-body col-sm-4">
                    <form class="form-signin" action="update" method="post">
                        <input type="hidden" name="id" value="${list.maKh}">
                        <div class="form-group">
                            <label for="tenKh">Code Product</label>
                            <input required="true" class="form-control" type="hidden" name="idSp" value="${sp.maSp}"/>
                        </div>
                        <div class="form-group">
                            <label for="tenKh">Name Product</label>
                            <input required="true" class="form-control" type="text" name="tenSp" value="${sp.tenSp}"/>
                        </div>
                        <div class="form-group">
                            <label for="tenKh">Description Product</label>
                            <input required="true" class="form-control" type="text" name="moTa" value="${sp.moTa}"/>
                        </div>
                        <div class="form-group">
                            <label for="tenKh">Price Product</label>
                            <input required="true" class="form-control" type="number" name="giaBan" value="${sp.giaBan}"/>
                        </div>
                        <div class="form-group">
                            <label for="tenKh">Amount Product</label>
                            <input required="true" class="form-control" type="number" name="soLuong" value="${sp.soLuong}"/>
                        </div>

                        <button class="btn btn-success">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </center>

</body>
</html>