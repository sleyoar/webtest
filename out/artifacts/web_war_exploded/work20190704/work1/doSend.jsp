<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言成功</title>
</head>
<body>
<%!
    Vector v = new Vector();
    int i=0;
    ServletContext application;

    synchronized void send(String s) {
        application = getServletContext();
        v.add(s);
        application.setAttribute("bord", v);
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String topic = request.getParameter("topic");
    String bord = request.getParameter("bord");
    if (name == null) {
        name = "guest" + (int) (Math.random() * 1000);
    }
    if (topic == null) {
        topic = "无信息";
    }
    if (bord == null) {
        bord = "无信息";
    }
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String time = sf.format(new Date());
    String s = name + "#" + topic + "#" + time + "#" + bord + "#";
    send(s);
    out.print("您的信息已提交");
%>
<h3>已提交留言&nbsp;&nbsp;<a href="bbs.jsp">返回留言板</a>&nbsp;&nbsp;<a href="show.jsp">查看留言板</a></h3>
</body>
</html>
