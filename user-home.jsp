<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="po.Book" %>
<%@ page import="java.util.List" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查看图书</title>
    <style type="text/css">

        body {
            background-color: antiquewhite;
            text-align: center;
        }

    </style>
</head>
<body>
<%--图书信息--%>

<h1>图书列表</h1>
<hr>
<div id="before">
    </form>
    <a href="javascript: window.history.go(-1)">返回上一级</a>
</div>
<br>
<%   
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
            if(conn != null){  
                out.print("数据库连接成功！");  
                out.print("<br />"); 
%>
<table align="center" border="2">
<tr>
	<td width="100" number="title">书名</td>
	<td width="100" name="title">作者</td>
	<td width="100" age="title">出版社</td>
	<td width="100" age="title">价格</td>
</tr>
<%
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT * FROM book;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                out.print("查询结果：");  
				out.print("<br/>");
                while (rs.next()) {
                %>
  <tr>  
    <td width="100" ><%=rs.getString("bookname") %></td>  
    <td width="100" ><%=rs.getString("author") %></td>  
    <td width="100" ><%=rs.getString("publish") %></td>  
    <td width="100"><%=rs.getDouble("price") %></td>  
</tr>
  <%
            }  
            }else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            //e.printStackTrace();  
            out.print("数据库连接异常！");  
        }  
%> 
</table>
<br><a href="admin-home.jsp">返回</a>
</body>
</html>
