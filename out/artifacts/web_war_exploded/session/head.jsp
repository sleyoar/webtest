<%
    //判断用户名是否保存
    Object name=session.getAttribute("login");
    if(name==null){
        // response.sendRedirect("login.jsp");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>