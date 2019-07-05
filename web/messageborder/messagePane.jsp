<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Vector,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%!
    Vector v = new Vector();
    int i = 0;
    //自己创建的applicationn
    ServletContext application;

    synchronized void send(String s) {

        application = getServletContext();
        v.add(s);
        application.setAttribute("mess", v);
    }
%>
<%

    String name = request.getParameter("peoplename");
    String title = request.getParameter("title");
    String message = request.getParameter("message");
    if (name == null) {
        name = "guest" + (int) (Math.random() * 10000);

    }
    if (title == null) {
        title = "无标题";
    }
    if (message == null) {
        message = "无信息";
    }
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String time = sf.format(new Date());
    String str = name + "#" + title + "#" + time + "#" + message;
    send(str);
    out.print("您的信息已提交");
%>
<a href="submit.jsp">返回留言板</a>
<a href="showMessage.jsp">查看留言板</a>
</body>
</html>