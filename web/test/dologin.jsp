<%--
  Created by IntelliJ IDEA.
  User: YT
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
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    if("admin".equalsIgnoreCase(name)&&"123456".equalsIgnoreCase(pwd)){
        //response.sendRedirect("welcome.jsp");
        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
        rd.forward(request,response);
    }else {
        response.sendRedirect("test.jsp");
        //RequestDispatcher rd=request.getRequestDispatcher("test.login");
    }
%>
</body>
</html>
