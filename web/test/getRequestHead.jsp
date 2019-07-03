<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 String header=request.getHeader("User-Agent");
    if(header.toLowerCase().contains("trident")){
       out.println("你使用的是IE浏览器");
    }else if(header.toLowerCase().contains("firefox")){
        out.println("你使用的是火狐浏览器");
    }else if(header.toLowerCase().contains("chrome")){
        out.println("你使用的是谷歌浏览器");
    }else{
       out.println("你使用的是其它浏览器");
    }

%>
</body>
</html>
