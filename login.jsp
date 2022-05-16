<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>用户登录页面</title>
      <style type="text/css">

        body {
            background-color: antiquewhite;
            text-align: center;
        }

    </style>
</head>
<body >
<p align="center">用户登录页面</p>
<form action="login-check.jsp" method="post">
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
      <td><input type="submit" value="登录" name="login"></td>
      <td><input type="reset"  value="重填" name="refill"></td>
    </tr>
  </table>
  <p align="center"><a href="reg.jsp" color=blue>注册用户</a></p>
</form >
</body>
</html>
