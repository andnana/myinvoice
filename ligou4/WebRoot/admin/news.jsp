<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
     <div class="span9">
          <div class="well hero-unit">
			 <div class="container">
        	<section class="content">
        	<s:iterator var="news" value="newsList">
            	
                	
                	<a href="adminnewsdetail.action?newsid=<s:property value="id" />" class="fadehover">
                	<s:if test="imgname != null && imgname.length() > 0">
                	<img src="<%=basePath %>small_pic_news/<s:property value="imgname" />" alt="">
                	</s:if>
                	<s:else>
                	<img src="<%=basePath %>small_pic_news/defaultsmall.jpg" alt="">
                	</s:else>
                	
                	</a>
                    <h2><a href="single.html"><s:property value="title" /></a></h2>
                    <ul>
                    	<li class="post">发表人: <a href="#"><s:property value="user.username" /></a></li>
                        <li class="category">分类: <a href="#"><s:property value="sortname" /></a></li>
                        <li class="comment">评论: <a href="#"><s:property value="commentlist.size" /></a></li>
                    </ul>
                    <p><s:property value="content" escape="false"/> </p>
                    <span><a href="adminnewsdetail.action?newsid=<s:property value="id" />">了解更多</a><a href="deletenews.action?newsid=<s:property value="id" />&filename=<s:property value="imgname"/>">删除</a></span>
                
			</s:iterator>        
             
           <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="adminnews.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator begin="1" end="totalPage" var="p">
                  <li><a href="adminnews.action?page=<s:property value="#p"/>" <s:if test="page eq #p} ">class="active"</s:if> ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="adminnews.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
          
            </section><!--end:content-->
            
        </div><!--end:container-->
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>
     	