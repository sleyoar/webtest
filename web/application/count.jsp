<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count = (Integer)application.getAttribute("count");
    if(count !=  null){
        count = 1 + count;
    }else{
        count = 1;
    }
    application.setAttribute("count",count);
%>
<%
    Integer i = (Integer)application.getAttribute("count");
    out.println("您好，您是第 " + i +" 位访问本网站的用户" );
%>

</body>
</html>
