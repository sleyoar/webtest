<%-- Created by IntelliJ IDEA. --%>
<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
    <title></title>
  </head>
  <body>
  Hello World！！！
  <%
    int sum=0;
    for (int i = 2; i <= 100; i++) {
      boolean flag = true;
      /*内嵌了一个for循环，作用是用100到200之间的每一个数，从2一直除到它本身，如果等于0的话，那么就不属于素数，就把flag置为false*/
      for (int j = 2; j <= Math.sqrt(i); j++) {
        if (i % j == 0)
          flag = false;
      }
      if (flag) {//只有当flag为true的时候，才会这里走。
        sum = sum + i;//每一次循环都让sum加上这个素数i，然后重新赋值给sum
      }
    }
  %>
  <p>1-100间素数和为：<%=sum%></p>
  <%
    int count=0;
    for(int year=2000;year<=2019;year++)
      //if((year % 4 == 0 && year % 100 != 0) || (year%400==0 && year % 3200 != 0) || year % 172800 == 0)
    if(year%4==0&&year%100!=0||year%400==0){
      count++;
      out.print(year+" ");
    }
  %>
  <p>2000-2019闰年有<%=count%>个</p>
  <%//out.内置对象
    int[] value={60,70,80};
    for (int i:value){
      out.println(i);
    }
  %>
  </body>
</html>