<%@ page language="Java" import="java.util.*,java.sql.*"
 pageEncoding="gb2312"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <head>
 </head>
 <body>
<form action="#">
   <c:forEach items="${news1}" var="news2" varStatus="status">
        <tr><td>${news2.newsTitle}</td>
           </tr>
  </c:forEach>
       <c:if test="${showpage>1}">
              <a href="pageservlet?topage=<%=1%>">首页</a>
              <a href="pageservlet?topage=${showpage-1}">上一页</a>
              </c:if>
               <c:if test="${showpage<pagecount}">
              <a href="pageservlet?topage=${showpage+1}">下一页</a>
              <a href="pageservlet?topage=${pagecount}">最后一页</a>
              </c:if>
              第${showpage}页
              一共${pagecount}页
 </form> <br>
 </body>
</html>