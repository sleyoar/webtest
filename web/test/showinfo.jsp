<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/2
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    //读取用户名和密码
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    //…HTML页面代码…
    //读取复选框选择项
    String[] channels = request.getParameterValues("channel");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="0" align="center">
    <tr>
        <td>用户名：<%=name%></td>
    </tr>
    <tr>
        <td>密码：<%=pwd%></td>
    </tr>
    <tr>
        <td>信息来源：<%if (channels != null) {
            for (String channel: channels) {
                out.println(channel);
            }
        }%></td>
    </tr>
</table>
<%
    out.print("sessionid:"+session.getId());
%>

</body>
</html>
