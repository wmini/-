<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除结果</title>
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
	<jsp:useBean id="book" class="po.Book"></jsp:useBean>
	<jsp:setProperty property="*" name="book"/>
	<%
		String Bookname = request.getParameter("bookname");
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
			String sql = "delete from book where bookname=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1,Bookname);
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("删除成功!");
			}
		   // 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("图书信息删除失败！");
			e.printStackTrace();
		}
	%>
	<br>
		<a href="book-delete.jsp">返回</a>
</body>
</html>