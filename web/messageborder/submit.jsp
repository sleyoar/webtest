<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="messagePane.jsp" method="post">
姓名：<input type="text" name="peoplename"/>
<br>主题:<input type="text" name="title"/>
<br>留言内容：
<br><textarea rows="10" cols="36" name="message" ></textarea>
<br><input type="submit" value="提交信息"/>
</form>
<!--查看留言内容 -->
<form action="showMessage.jsp" method="post">
<input type="submit" value="查看留言板" />
</form>
</body>
</html>