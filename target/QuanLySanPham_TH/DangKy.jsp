<%--
  Created by IntelliJ IDEA.
  User: Thanh Cong
  Date: 7/10/2021
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register </title>
        <link rel="stylesheet" href="CSS/1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,400i|Noto+Sans:400,400i,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
    </head>
    <style>
         
*{
    margin:0;
    padding:0;
    border:none;
    font-family: 'Open Sans', sans-serif;
}
body {
    overflow: hidden;
    background-color: #ededed;
}
.to {
    display: grid;
    grid-template-columns: repeat(12,1fr);
    grid-template-rows: minmax(100px,auto);
}
 
.form {
    border: 1px solid #80808000;
    grid-column: 5/9;
    grid-row: 2;
    height: 500px;
    width: 500px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    border-radius: 15px;
    box-shadow: 0px 0px 14px 0px burlywood;
    background-color: cyan;
}
h2 {
    margin-top: 50px;
    margin-bottom: 30px;
}
i.fab.fa-app-store-ios {
    display: block;
    margin-bottom: 50px;
    font-size: 28px;
}
 
label {
    margin-left: -126px;
    display: block;
    font-weight: lighter;
 
}
input{
    display: block;
    border-bottom: 2px solid #00BCD4;
    margin-top: 6px;
    margin-bottom: 10px;
    outline-style: none;
}
input[type="text"] {
    padding: 5px;
    width: 70%;
}
 
input#submit {
    padding: 7px;
    width: 50%;
    border-radius: 10px;
    border: none;
    position: absolute;
    bottom: 10px;
    cursor: pointer;
    background: linear-gradient(to right, #fc00ff, #00dbde);
}
input#submit:hover{
 
    background: linear-gradient(to right, #fc466b, #3f5efb); 
}
 
    </style>
    <body>
        <div class="to">
            <div class="form">
                <form action="DangKy" method="post">
                    <h3>Đăng ký người dùng</h3>
                    <label for="username">UserName:</label>
                    <input required="true" type="text"  id="username" name="username"/>
                    <label for="password">Password:</label>
                    <input required="true" type="password"  id="password" name="password"/>
                    <label for="tenKh">Ho Ten:</label>
                    <input required="true" type="text" id="tenKh" name="tenKh"/>
                    <label for="ngSinh">Ngay Sinh:</label>
                    <input type="date"  id="ngSinh" name="ngSinh"/>
                    <label for="diaChi">Dia Chi:</label>
                    <input required="true" type="text"  id="diaChi" name="diaChi"/>
                    <label for="SDT">SDT:</label>
                    <input type="text"  id="SDT" name="SDT"/>
                    <input id="submit" type="submit" name="submit" value="Gửi">
                </form>
            </div>                
        </div>
    </body>
</html>