<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 //假设用户名是admin，密码是123456
   String name=request.getParameter("user");
   String pwd=request.getParameter("pwd");
   if("admin".equalsIgnoreCase(name)&&"123456".equalsIgnoreCase(pwd)){
       //跳转到欢迎页面
      // response.sendRedirect("welcome.jsp");
       //for(int i=0;i<2;i++){
           //转发多次，或报错
           request.getRequestDispatcher("welcome.jsp").forward(request,response);
      // }

   }else{
       response.sendRedirect("logon.jsp");
   }

%>
</body>
</html>
