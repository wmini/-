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
</head>
	<body>
	<h1>删除图书</h1>
	<hr/>
	<div id="before">
	    <a href="javascript: window.history.go(-1)">返回上一级</a>
	</div>
	<body>
		<div class="contain pull-left">
			<form action="book-dodelete.jsp" class="form-inline ">
				<div class="search">
					<input type="text" name="bookname" class="form-control" placeholder="请输入删除图书书名" />
					<button type="submit" onclick="return checkForm()">删除</button>
				</div>
			</form>
<body>
	<br><a href="admin-home.jsp">返回</a>
</body>


<script type="text/javascript">
    function checkForm() {
        var bookname = registerForm.bookname.value;
        //alert(name + pwd + repwd);
        if (bookname == "" || bookname == null) {
            alert("请输入图书名称");
            registerForm.bookname.focus();
            return false;
        }
        alert('修改成功！');
        return true;
    }
</script>
</body>
</html>
</html>