<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count=(Integer)application.getAttribute("count");
    //the first time
    if(count==null){
        count=1;
    }else {
        count++;
    }
    application.setAttribute("count",count);
%>
<form action="show.jsp" method="get">
<input type="submit" value="Submit">
</form>
</body>
</html>
