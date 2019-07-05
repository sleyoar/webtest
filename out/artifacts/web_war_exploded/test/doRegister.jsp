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
<%
     //post请求可以这么解决乱码问题
    request.setCharacterEncoding("utf-8");
  //获取到注册信息
   String name=request.getParameter("user");
   String pwd=request.getParameter("pwd");

%>
用户名：<%=name%>
密码：<%=pwd%>
信息来源：<%
    String[]channels=request.getParameterValues("channel");
    for(String channel:channels){
        out.println(channel+",");
    }
    response.sendRedirect("login/logon.jsp");
%>
</body>
</html>
