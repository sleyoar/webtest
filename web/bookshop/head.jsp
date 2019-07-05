<%--
  Created by IntelliJ IDEA.
  User: YT
  Date: 2019/7/3
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%
    //判断用户名是否保存
    Object name=session.getAttribute("logon");
    if(name==null){
        // response.sendRedirect("login.jsp");o
        request.getRequestDispatcher("logon.jsp").forward(request, response);
    }
%>o