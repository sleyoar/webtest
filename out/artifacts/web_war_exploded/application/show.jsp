<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>进入网站</h1>
<%
    //获取当前访问者是。。位
    Integer count=(Integer)application.getAttribute("count");
    out.print("是第"+count+"位");
%>
</body>
</html>
