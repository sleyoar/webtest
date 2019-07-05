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
    <title>Title</title>
</head>
<body>
<%
 //读取cookie，如果发现存在用户名等，直接跳转到欢迎页面
  Cookie[] cookies=request.getCookies();
  if(cookies!=null){
      for(Cookie c:cookies){
          //保存了cookie KeY:name
           if("name".equalsIgnoreCase(c.getName())){
               request.getRequestDispatcher("welcome.jsp").forward(request,response);
           }


      }
  }

%>
<fieldset>
    <legend>登录</legend>
<form action="doLogin.jsp" method="post">
  <p>用户名:<input type="text" name="user"/>  </p>
   <p>密码：<input type="password" name="pwd"/></p>
    <p>自动登录<input type="checkbox" name="remeber"/></p>
    <input type="submit" value="登录"/>
    <input type="reset" value="取消"/>
</form>
</fieldset>
</body>
</html>
