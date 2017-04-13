<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<div id="page_wrap">
    	
      
        <div class="container">
        	<section class="content">
        	<s:iterator var="news" value="newsList">
            	<article>
                		<div class="meta">
                		<span><strong>
                		<fmt:formatDate value="${news.addtime}" pattern ="dd"></fmt:formatDate>日
                		</strong>
                		
                		<small><fmt:formatDate value="${news.addtime}" pattern ="MM"></fmt:formatDate>月<br><fmt:formatDate value="${news.addtime}" pattern ="yyyy"></fmt:formatDate></small></span>
                	</div>
                
                	<s:if test="imgname != null && imgname.length() > 0">
                	<img src="<%=basePath %>small_pic_news/<s:property value="imgname" />" alt="">
                	</s:if>
                	<s:else>
                	<img src="<%=basePath %>small_pic_news/defaultsmall.jpg" alt="">
                	</s:else>
                	
                	
                	
                    <h3><s:property value="title" /></h3>
                    <ul>
                    	<li class="post">发表人: <a href="#"><s:property value="user.username" /></a></li>
                       <!--  <li class="category">分类: <a href="#"><s:property value="sortname" /></a></li> -->
                        <li class="comment">评论: <a href="#"><s:property value="commentlist.size" /></a></li>
                    </ul>
                    <p><s:property value="content" escape="false" /> </p>
                    <span><a href="newsdetail.action?newsid=<s:property value="id" />">了解更多</a></span>
                </article>
			</s:iterator>        
           
           <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="news.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator  var="p" begin="1" end="totalPage">
                  <li><a href="news.action?page=<s:property value="#p"/>" <s:if test="page eq #p">class="active"</s:if> ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="news.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
          	<form class="form-horizontal" style="clear:both" action="savenews.action" enctype="multipart/form-data" method="post">
				
				
					
						<div class="control-group">
					
						<div class="controls">
							<textarea  id="content" name = "news.content" > </textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="file1"> 图片描述</label>
						<div class="controls">
							<input type="file" name="file1" />
						</div>
					</div>
			
					
				
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="提交" /> 
					</div>					
				
			</form>
            </section><!--end:content-->
          <%@include file="sidebar.jsp" %>
        </div><!--end:container-->
       
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>