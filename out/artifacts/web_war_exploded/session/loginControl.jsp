<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/3
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 //用户登录之后，保存用户名一段时间
 String user=request.getParameter("user");
    String pwd=request.getParameter("pwd");
    if("admin".equalsIgnoreCase(user)&&"123456".equalsIgnoreCase(pwd)){
      session.setAttribute("login",user);
      session.setMaxInactiveInterval(5*60);//保存用户名5分钟，单位为秒
        response.sendRedirect("welcome.jsp");
        //web-inf目录的资源可以通过服务器访问，转发就可以访问到，但重定向不能访问
        //request.getRequestDispatcher("../WEB-INF/受保护的页面.jsp").forward(request,response);
    }else{
        response.sendRedirect("login.jsp");
    }

%>
</body>
</html>
