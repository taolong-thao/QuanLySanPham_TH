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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Update Customer</title>
    </head>
    <body>
    <center>


        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Update Customer</h2>
                </div>
                <div class="panel-body col-sm-4">
                    <form class="form-signin" action="updatekh" method="post">
                        <input type="hidden" name="id" value="${list.maKh}">
                        <div class="form-group">
                            <label for="tenKh">Name Customer:</label>
                            <input required="true" type="text" class="form-control" id="tenKh" name="tenKh"
                                   value="${list.tenKh}"/>
                        </div>
                        <div class="form-group">
                            <label for="ngSinh">Date of birth Customer:</label>
                            <input type="date" class="form-control" id="ngSinh" name="ngSinh" value="${list.ngSinh}"/>
                        </div>
                        <div class="form-group">
                            <label for="diaChi">Address Customer:</label>
                            <input required="true" type="text" class="form-control" id="diaChi" name="diaChi"
                                   value="${list.diaChi}"/>
                        </div>
                        <div class="form-group">
                            <label for="SDT">Phone Number Customer:</label>
                            <input type="text" class="form-control" id="SDT" name="SDT" value="${list.SDT}"/>
                        </div>
                        <button class="btn btn-success">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </center>
</body>
</html>
