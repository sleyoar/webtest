<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板</title>
</head>
<style>
    .f1{ text-align: center;width: 500px;}
    form ul li{ text-align: left}
</style>
<body>
<center>
<form class="f1" action="doSend.jsp"name="form1" method="post">
    <ul style="list-style-type: none">
        <li>姓名：<input type="text" name="name"></li>
        <li>主题：<input type="text" name="topic"></li>
        <li>留言板：<br/><textarea cols="40" rows="10" name="bord"></textarea></li>
        <li><input type="submit" value="提交">
        <input type="reset" value="取消"></li>
        <li><!--查看留言内容 -->
            <form action="show.jsp" method="post">
                <input type="submit" value="查看留言板" />
            </form></li>
    </ul>
</form>
</center>
</body>
</html>
