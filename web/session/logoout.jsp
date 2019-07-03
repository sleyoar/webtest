<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
 session.invalidate();//使session失效
   // session.removeAttribute("login");
   response.sendRedirect("welcome.jsp");
%>

</body>
</html>
