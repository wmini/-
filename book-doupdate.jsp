<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改结果</title>
    <style type="text/css">
        h1 {
            text-align: center;
        }

        h4 {
            text-align: center;
            color: red;
        }

        body {
            background-color: antiquewhite;
        }

        div {
            text-align: center;
        }

        #before {
            text-align: center;
        }

    </style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String Bookname = request.getParameter("bookname");
	String Author = request.getParameter("author");
	String Publish = request.getParameter("publish");
	String Price = request.getParameter("price");
	String driverName="com.mysql.jdbc.Driver";
	String userName="root";
	String userPwd="root";
	String dbName="books";
	String url1="jdbc:mysql://localhost:3306/"+dbName;
	String url2="?user="+userName+"&password="+userPwd;
	String url3="&userUnicode=true&characterEncoding=UTF-8";
	String url=url1+url2+url3;
try {
	Class.forName(driverName);
	  	Connection conn=DriverManager.getConnection(url);
	System.out.println("数据库成功");
	String sql = "update book set bookname=?,author=?,publish=?,price=?  where bookname='"+Bookname+"'";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,Bookname);
	ps.setString(2,Author);
	ps.setString(3,Publish);
	ps.setString(4, Price);
	int row = ps.executeUpdate();
	// 判断是否更新成功
	if(row > 0){
		// 更新成输出信息
		out.print("修改成功！！");
	}
	// 关闭PreparedStatement，释放资源
	ps.close();
	// 关闭Connection，释放资源
	conn.close();
	} catch (Exception e) {
	out.print("图书信息修改失败！");
%>
<% e.printStackTrace();
}
%>
<br>
<a href="book-update.jsp">返回</a>
</body>
</html>