<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //刷新的一万以内的数字
    int data=new Random().nextInt(10000);
    out.println(data);
    //每隔2s刷新一次页面
    response.setHeader("refresh", "1");
    //模拟注册成功，提示5秒之后，进入到登录页面
   // response.setHeader("refresh", "2;url=index.jsp");
%>
</body>
</html>
