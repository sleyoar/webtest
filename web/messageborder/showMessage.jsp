<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<table border="1">
    <tr>
        <td>留言者姓名</td>
        <td>留言标题</td>
        <td>留言时间</td>
        <td>留言内容</td>
        <%
            Vector v = (Vector) application.getAttribute("mess");
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
                        out.print("<td><textarea rows=1 cols=10>" + a[k] + "</textarea></td>");
                    }
                }

            }
        %>
    </tr>
</table>
<a href="submit.jsp">返回留言板</a>
</body>
</html>