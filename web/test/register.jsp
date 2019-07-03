<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  action="doRegister.jsp" method="get">
<p>用户名:<input type="text" name="user" /></p>
    <p>密码:<input type="password" name="pwd" /></p>
    <p>信息来源:<input type="checkbox" name="channel" value="报刊">报刊
        <input type="checkbox" name="channel" value="网络">网络
        <input type="checkbox" name="channel" value="朋友推荐"> 朋友推荐
        <input type="checkbox" name="channel" value="电视"> 电视
    </p>
    <input type="submit" value="注册"/>
    <input type="reset" value="取消"/>
</form>
</body>
</html>
