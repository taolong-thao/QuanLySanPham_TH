<%-- 
    Document   : DangNhap
    Created on : Jul 3, 2021, 7:50:09 PM
    Author     : Quang Vinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dang Nhap</title>
    </head>
    <body>
        <h1>Dang Nhap</h1>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-body">
                            <form action="DangNhap" method="post">
				<div class="form-group">
				  <label for="username">Email:</label>
                                  <input required="true" type="username" class="form-control" id="username" name="username"/>
				</div>
				<div class="form-group">
				  <label for="password">Password:</label>
                                  <input required="true" type="password" class="form-control" id="password" name="password"/>
				</div>
				<button class="btn btn-success">Dang Nhap</button>
                            </form>
			</div>
		</div>
	</div>
</body>
</html>
