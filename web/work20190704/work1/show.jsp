<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板展示</title>
</head>
<style>
    td {
        text-align: center;
    }
</style>
<body>
<table border="1" cellspacing="0">
    <tr>
        <td>姓名</td>
        <td>主题</td>
        <td>留言时间</td>
        <td>留言内容</td>
        <%
            Vector v = (Vector) application.getAttribute("bord");
            for (int i = 0; i < v.size(); i++) {
                out.print("<tr>");
                String message = (String) v.elementAt(i);
                //解决中文乱码问题
                byte[] bb = message.getBytes("ISO-8859-1");
                message = new String(bb, "UTF-8");
                //out.print("获取原始字符"+message);
                String[] a = message.split("#");
                out.print("<tr>");
                int number = a.length - 1;
                for (int k = 0; k <= number; k++) {
                    if (k < number) {
                        out.print("<td>" + a[k] + "</td>");
                    } else {
                        out.print("<td><textarea rows=10 cols=5>" + a[k] + "</textarea></td>");
                    }
                }

            }
        %>
    </tr>
</table>
<a href="bbs.jsp">返回留言板</a>
</body>
</html>
