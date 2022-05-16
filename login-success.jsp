<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
    <style type="text/css">

        body {
            background-color: antiquewhite;
            text-align: center;
        }

    </style>
</head>
<body>
<p align="center">
    <%String username = request.getSession().getAttribute("username").toString();%>
    您好，<%=username %> 你登录成功！！！！</p>

<p align="center"><a href="login.jsp" color=blue>返回登录</a></p>
<p align="center"><a href="admin-home.jsp" color=blue>进入系统</a></p>
</body>
</html>

