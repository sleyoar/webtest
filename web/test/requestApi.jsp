<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>request内置对象的常用方法</h2>
<!-- java小脚本里面不能直接写Html标签 -->
<%
    out.println("请求的方法："+request.getMethod()+"<br>");
    out.println("请求的网址："+request.getRequestURL()+"<br>");
    out.println("请求的资源名："+request.getRequestURI()+"<br>");
    out.println("请求的参数："+request.getQueryString()+"<br>");
    out.println("虚拟的目录"+request.getContextPath()+"<br>");
    out.println("客户端的ip"+request.getRemoteAddr()+"<br>");
    out.println("客户端的主机名"+request.getRemoteHost()+"<br>");
    out.println("服务器的网络端口："+request.getRemotePort());
%>
</body>
</html>
