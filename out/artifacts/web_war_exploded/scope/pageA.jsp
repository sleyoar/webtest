<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>pageA</h1>
<%
 pageContext.setAttribute("name","jsp开发");
 request.setAttribute("name","jsp开发");
 session.setAttribute("name","jsp开发");
 application.setAttribute("name","jsp开发");
 //request.getRequestDispatcher("pageB.jsp").forward(request,response);

    response.sendRedirect("pageB.jsp");
%>
<h2>
   获取的数据：<%=pageContext.getAttribute("name")%>
</h2>
<%--<%pageContext.include("pageB.jsp");%>--%>
<%--<%pageContext.forward("pageB.jsp");%>--%>
</body>
</html>
