<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/4
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎</title>
</head>
<body>
<%
    //读取cookies，存在name，直接welcome.jsp
    Cookie[] cookies=request.getCookies();
    if(cookies!=null){
        for(Cookie c:cookies){
            //已经登录过
            if("name".equalsIgnoreCase(c.getName())){
                out.println("<h2>Welcome <h2>"+c.getValue());
            }
        }
    }else {
        out.print("<h2>Welcome<h2>"+request.getParameter("name"));
    }
    /*for (int i=0;i<cookies.length&&cookies!=null;i++){

    }*/
%>

</body>
</html>
