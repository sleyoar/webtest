<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/3
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <style>
        .nav{ background-color:rgba(126,93,10,0.93);height: 50px}
        .ul {list-style-type: none;height:40px;overflow: hidden;text-align:center;}
        .ul li {float: left;align-items: center; width: 14%;color: #4c2f21;}
        li a {color: white;padding: 15px;margin: 0px;text-decoration:none;
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
<%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");

%>
欢迎您：<%=name%>
您来自：<%=request.getRemoteHost()%>
<p><a href="logout.jsp"> 退出登录</a></p>
</body>
</html>
