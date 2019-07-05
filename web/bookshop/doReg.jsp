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
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    String pwd1=request.getParameter("pwd1");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String address=request.getParameter("address");
    if(pwd.equals(pwd1)){
        RequestDispatcher t=request.getRequestDispatcher("index.jsp");
        t.forward(request,response);
    }else {
        response.sendRedirect("register.jsp");
    }

%>
<h1>注册成功</h1>
<form style="text-align: center" >
    <table align="center">
        <tr>用户名：<%=name%></tr>
        <tr>密码：<%=pwd%></tr>
        <tr>电子邮件：<%=email%></tr>
        <tr>电话：<%=phone%></tr>
        <tr><%=address%></tr>
    </table>
    <a href="index.jsp">返回首页</a>
</form>
</body>
</html>
