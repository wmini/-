<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册页面</title>
    <style type="text/css">

        body {
            background-color: antiquewhite;
            text-align: center;
        }

    </style>
</head>
<body >
<p align="center">用户注册页面</p>
<form action="reg-submit.jsp" method="post">
    <table align="center" border="0.5">
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="text" name="password"></td>
        </tr>
        <tr>
            <td>确认密码:</td>
            <td><input type="text" name="password2"></td>
        </tr>
        <tr>
            <td><input type="submit" value=注册 name="reg" ></td>
            <td><input type="reset" name=refill value="重填" ></td>
        </tr>
    </table>
    <p align="center"><a href="login.jsp" color=blue>返回登录</a></p>
</form >
</body>
</html>
