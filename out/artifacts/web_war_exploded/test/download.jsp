<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/3
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下载</title>
</head>
<body>
<%
    String path=request.getServletContext().getRealPath("/download/美女.jpg");
    System.out.println("真实路径："+path);
    //创建输入流
    FileInputStream fis=new FileInputStream(path);
    //创建输出流
    ServletOutputStream  sos=response.getOutputStream();
    //完整路径当中获取文件名
    String filename=path.substring(path.lastIndexOf("\\")+1);
    System.out.println("文件名："+filename);
//设置文件名的编码
    filename= URLEncoder.encode(filename,"UTF-8");
//告知客户端要下载文件
    response.setHeader("content-disposition", "attachment;filename="+filename);
    response.setHeader("content-type", "image/jpeg");

    //下载，从网络读取的文件，本地同时生成一个文件
    int len=0;
    byte[]buf=new byte[1024];
    while((len=fis.read(buf))!=-1){
        sos.write(buf, 0, len);
    }
    sos.close();
    fis.close();
%>
</body>
</html>
