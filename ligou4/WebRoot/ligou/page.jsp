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
              <a href="pageservlet?topage=<%=1%>">��ҳ</a>
              <a href="pageservlet?topage=${showpage-1}">��һҳ</a>
              </c:if>
               <c:if test="${showpage<pagecount}">
              <a href="pageservlet?topage=${showpage+1}">��һҳ</a>
              <a href="pageservlet?topage=${pagecount}">���һҳ</a>
              </c:if>
              ��${showpage}ҳ
              һ��${pagecount}ҳ
 </form> <br>
 </body>
</html>