<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
欢迎<%
    Cookie[] cookies=request.getCookies();
    if(cookies!=null){
        for(Cookie c:cookies){
            //保存了cookie KeY:name
            if("name".equalsIgnoreCase(c.getName())){
                out.println(c.getValue());
            }


        }
    }
%>
</body>
</html>
