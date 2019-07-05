<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>pageB</h1>
<h2>
   <%-- 获取的数据:<%=pageContext.getAttribute("name")%>--%>
    获取的数据:<%=request.getAttribute("name")%>
       session域 获取的数据:<%=session.getAttribute("name")%>
</h2>
</body>
</html>
