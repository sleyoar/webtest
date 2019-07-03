<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/2
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内置对象测试</title>
</head>
<body>
<p>out</p>
<%--<%
    int[] value = {60, 70, 80};
    for (int i : value) {
        out.print(i + " ");
    }
%>--%>
<p></p>
<%--<form name="form1" method="post" action="showinfo.jsp">--%>
<form name="form1" method="post" action="dologin.jsp">
    <table border="0" align="center">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td>信息来源</td>
            <td>
                <input type="checkbox" name="channel" value="报刊">报刊
                <input type="checkbox" name="channel" value="网络">网络
                <input type="checkbox" name="channel" value="朋友推荐"> 朋友推荐
                <input type="checkbox" name="channel" value="电视"> 电视
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="submit" value="提交">
                <input type="reset" name="reset" value="取消">
            </td>
        </tr>
    </table>
</form>
<%
    session.setAttribute("name","wewe");
    //response.sendRedirect("showinfo.jsp");
%>

</body>
</html>
