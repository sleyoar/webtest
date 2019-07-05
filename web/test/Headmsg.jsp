<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>头部请求示例</title>
</head>
<body>
<h1>头部请求示例</h1><hr>
<table width="100%" border="1" align="center">
    <tr bgcolor="#7fff00">
    <th>Header Names</th>
    <th>Head Values</th>
    </tr>
    <%
        Enumeration headerNames=request.getHeaderNames();
        while (headerNames.hasMoreElements()){
            String paramName=(String)headerNames.nextElement();
            out.print("<tr><td>"+paramName+"</td>\n");
            String paramValue=request.getHeader(paramName);
            out.print("<td>"+paramValue+"</td></tr>\n");
        }
    %>
</table>
</body>
</html>
