<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/3
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(username.equals("Tom")&&password.equals("123")){
        Cookie c1=new Cookie("username",username);
        c1.setMaxAge(10);
        response.addCookie(c1);
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.forward(request,response);
    }else {
        response.sendRedirect("myaccount.jsp");
        session.setAttribute("name",request.getParameter("username"));
    }
%>
</body>
</html>
