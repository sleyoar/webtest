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
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    String[] rem=request.getParameterValues("rember");
    if("admin".equals(name)&&"123456".equals(pwd)){
        Cookie c1=new Cookie("name",name);
        Cookie c2=new Cookie("pwd",pwd);
        if(rem!=null){
            //存储时间5分钟
            c1.setMaxAge(5*60);c2.setMaxAge(5*60);
            //其他页面也可以访问cookies
            c1.setPath("/");c2.setPath("/");
        }else {//删除cookies
            //存储时间0分钟
            c1.setMaxAge(0);c2.setMaxAge(0);
            c1.setPath("/");c2.setPath("/");
        }

        response.addCookie(c1);response.addCookie(c2);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else {
        out.println("<script>alert('用户名或者密码错误')</script>");
        response.setHeader("refresh", "2;url=login.jsp");
    }
%>
</body>
</html>
