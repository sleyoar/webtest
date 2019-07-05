<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>El测试</title>
</head>
<body>
<h1>EL测试获取变量值</h1>
<hr>
<%request.setAttribute("name","BOB");%>
获取变量：<%=request.getAttribute("name")%><br/>
Name2：${name}
<hr>
<%
    User user=new User();
    user.setName("BOB");
    request.setAttribute("user",user);
%>
<%=((User)request.getAttribute("user")).getName()%><br/>
<p>${user.name}</p>
${user["name"]}
<hr>
<%
    List<String> list=new ArrayList<>();
    list.add(0,"CHINA");
    list.add(1,"China");
    list.add(2,"UK");
    request.setAttribute("cons",list);
%>
<%=list.get(0)%>
${cons[0]}&nbsp;
${cons[1]}&nbsp;
${cons[2]}
<hr>
<%
    Map<String,String> map=new HashMap<String,String>();
    map.put("name","tom");
    session.setAttribute("person",map);
%>
<%=((Map)session.getAttribute("person")).get("name")%>
${person.get("name")}
<h3>El表达式关系运算</h3><hr>
${30>23}&nbsp;
<hr>
<h4>判断变量是否存在</h4>
<hr>
<%--是否为空--%>
a是否存在${not empty a}
</body>
</html>
