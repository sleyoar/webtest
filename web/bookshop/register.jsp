<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/3
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息</title>
    <style>
        .nav{ background-color:rgba(126,93,10,0.93);height: 50px}
        .ul {list-style-type: none;height:40px;overflow: hidden;text-align:center;}
        .ul li {float: left;align-items: center; width: 14%;color: #4c2f21;}
        form ul li{text-align: right;}
        .ul li a {color: white;padding: 15px;margin: 0px;text-decoration:none;
            background-color:#4c2f21;display:block;}
    </style>
</head>
<body>
<div class="nav">
    <ul class="ul">
        <li><a href="index.jsp">首页</a></li>
        <li><a href="category.jsp">图书分类</a></li>
        <li><a href="books.jsp">推荐书籍</a></li>
        <li><a href="myaccount.jsp">我的账户</a></li>
        <li><a href="register.jsp">用户注册</a></li>
        <li><a href="price.jsp">价格信息</a></li>
        <li><a href="about.jsp">联系我们</a></li>
    </ul>
</div>
<h1>用户注册</h1>
<p></p>
<div>
<form action="doReg.jsp" method="post" style="text-align: center;width: 500px">
    <ul style="list-style-type: none;">
        <li>用户名：<input type="text" name="name"></li>
        <li>密码：<input type="password" name="pwd"></li>
        <li>密码确认：<input type="password" name="pwd1"></li>
        <li>电子邮件：<input type="email" name="email"></li>
        <li>电话：<input type="text" name="phone"></li>
        <li>地址：<input type="text" name="address"></li>
        <li><input type="checkbox" value="协议" name="check">我同意<a href="#">相关协议和政策</a></li>
        <li style="padding-left: 100px"><input type="submit" value="提交">
            <input type="reset" name="reset" value="取消">
        </li>
    </ul>
</form>

</div>
</body>
</html>
