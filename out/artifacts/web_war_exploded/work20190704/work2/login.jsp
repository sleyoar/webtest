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
    <title>登录</title>
</head>
<body>
<%
    //读取cookies，存在name，直接welcome.jsp
    Cookie[] cookies=request.getCookies();
    if(cookies!=null){
        for(Cookie c:cookies){
            //已经登录过
            if("name".equalsIgnoreCase(c.getName())){
                request.getRequestDispatcher("welcome.jsp").forward(request,response);
            }
        }
    }
    /*for (int i=0;i<cookies.length&&cookies!=null;i++){

    }*/
%>
<form action="doLogin.jsp">
    <p>Username:<input type="text" name="name"></p>
    <p>Password:<input type="password" name="pwd"></p>
    <p><input type="checkbox" name="rember">保存密码</p>
    <input type="submit" value="Login">
    <input type="reset" value="Reset">
</form>
</body>
</html>
