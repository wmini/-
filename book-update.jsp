<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改图书</title>
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

    </style>
</head>
<body>
<h1>修改图书</h1>
<hr/>
<div id="before">
    <a href="javascript: window.history.go(-1)">返回上一级</a>
</div>
<form action="book-doupdate.jsp" method="post" name="registerForm">
    <div>
        <tr>
            <label>图书名称：</label>
            <input type="text" name="bookname" id="bookname"  placeholder="图书名称" autofocus="autofocus">
        </tr>
    </div>
    <div>
        <tr>
            <label>图书价格：</label></td>
            <input type="text" name="price" id="price" placeholder="图书价格">
        </tr>
    </div>
    <div>
        <tr>
            <label>图书作者：</label>
            <input type="text" name="author" id="author" placeholder="图书作者">
        </tr>
    </div>
    <div>
        <tr>
            <label>出版公司：</label>
            <input type="text" name="publish" id="publish" placeholder="出版公司">
        </tr>
    </div>
    <div>
        <tr>
            <button type="submit" onclick="return checkForm()">修改</button>
            <button type="reset">重置</button>
        </tr>
        <br><a href="admin-home.jsp">返回</a>
    </div>
</form>

<script type="text/javascript">
    function checkForm() {
        var bookname = registerForm.bookname.value;
        var price = registerForm.price.value;
        //alert(name + pwd + repwd);
        if (bookname == "" || bookname == null) {
            alert("请输入图书名称");
            registerForm.bookname.focus();
            return false;
        } else if (price == "" || price == null) {
            alert("请输入图书价格");
            registerForm.price.focus();
            return false;
        }
        alert('修改成功！');
        return true;
    }
</script>
</body>
</html>