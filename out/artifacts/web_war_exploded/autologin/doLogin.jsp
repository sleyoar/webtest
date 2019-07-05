<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 String name=request.getParameter("user");
 String pwd=request.getParameter("pwd");
 String[] remeber=request.getParameterValues("remeber");

 if("admin".equalsIgnoreCase(name)&&"123456".equalsIgnoreCase(pwd)){

     Cookie userCookie=new Cookie("name",name);
     Cookie pwdCookie=new Cookie("pwd",pwd);
     //勾选了自动登录的复选框
     //保存用户名和密码
     if(remeber!=null){
         userCookie.setMaxAge(5*60);//存储时间为5分钟
         userCookie.setPath("/");//其他应用程序可以访问
         pwdCookie.setMaxAge(5*60);
         pwdCookie.setPath("/");
     }else{
         //需要之前存储的cookie信息
         userCookie.setMaxAge(0);
         pwdCookie.setMaxAge(0);
         userCookie.setPath("/");//设置cookie路径
         pwdCookie.setPath("/");
     }
     //写入
     response.addCookie(userCookie);
     response.addCookie(pwdCookie);
     request.getRequestDispatcher("welcome.jsp").forward(request,response);
 }else{
     out.println("<script>alert('用户名或者密码错误')</script>");
     response.setHeader("refresh", "2;url=login.jsp");
 }

%>
</body>
</html>
