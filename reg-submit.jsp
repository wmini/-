<%@page import="java.io.FileWriter" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.File"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
</head>
<body>
<%
    String username = request.getParameter("username");//注册用户名
    String password = request.getParameter("password");//密码
    String password2 = request.getParameter("password2");//确认密码
    try
    {
        if(username.length()==0) {
            out.print("<script>alert('用户名不能为空');location.href='reg.jsp';</script>");
        } else if(password.length()==0) {
            out.print("<script>alert('密码不能为空');location.href='reg.jsp';</script>");
        } else if(!password.equals(password2)){
            out.print("<script>alert('密码输入不一致，请重新注册');location.href='reg.jsp';</script>");
        } else if(password.equals(password2)) {
            File file = new File("F://注册登录.txt");
            FileWriter fw = new FileWriter(file,true);//按字符向流中写入数据
            if(file.length()==0) {//判断文件是否为空
                fw.write(username);
                fw.write("\n"+password);
                fw.flush();//冲刷出流,将数据写入
                fw.close();
                out.print("<script>alert('注册成功，点击确定返回登录');location.href='login.jsp';</script>");
            } else {
                fw.write("\n"+username);//如果文件不为空，写入时要先换行，否则会将之前的内容覆盖
                fw.write("\n"+password);
                fw.flush();
                fw.close();
                out.print("<script>alert('注册成功，点击确定返回登录');location.href='login.jsp';</script>");
            }
        }
    }
    catch(IOException e)
    {
        e.printStackTrace();
    }
%>
</body>
</html>
