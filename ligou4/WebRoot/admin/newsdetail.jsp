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
                
                	
                		
                	
                    <a href="javascriopt:void(0)">
                    <s:if test="news.imgname != null && news.imgname.length() > 0">
                    <img src="<%=basePath %>pic_news/<s:property value="news.imgname" />" alt="">
                    </s:if>
                    <s:else>
                    <img src="<%=basePath %>pic_news/default.jpg" alt="">
                    </s:else>
                
                    
                    </a>
                 
                    <ul>
                    	<li class="post">发表人: <s:property value="news.user.username"/><a href="#"></a></li>
                        <li class="category">分类: <a href="#"><s:property value="news.sortname"/></a></li>
                        <li class="comment">评论: <a href="#"><s:property value="totalItem"/></a></li>
                        <li class="comment"><a href="comment.action?newsid=<s:property value='news.id'/>&page=<s:property value="page"/>&parentid=0">点击评论</a></li>
                    </ul>
						<p><s:property value="news.content" escape="false"/></p>
               
             
                <div class="feedback-wrap">
                <h3><s:property value="totalItem"/> 条评论 &mdash; <span><a href="#"></a></span></h3><br>
                
                <s:iterator value="commentlist">
                	<div class="dvision">
                	<s:property value="user.username"/>
                    	<div class="feedback">
                        	<s:if test="user.headpic != null && user.headpic.length() > 0">
                	<img src="<%=basePath %>small_pic_head/<s:property value="user.headpic" />" alt="">
                	</s:if>
                	<s:else>
                	<img src="<%=basePath %>small_pic_head/smallheadpic.jpg" alt="">
                	</s:else>
                            <div>
                                <h4><a href="#"><s:property value="username"/> 回复&nbsp;<s:property value="parentusername"/> </a></h4>
                                <span><s:property value="floor"/>楼&nbsp;&nbsp;<a href="#"><s:property value="addtime"/></a></span>
                                <p><s:property value="content" escape="false"/></p>
                                <span class="reply"><a href="comment.action?parentid=<s:property value="id"/>&newsid=<s:property value="news.id"/>&page=<s:property value="page"/>">回复</a></span>
                            </div>
                        </div>
                     
                     
                    </div>
                    </s:iterator>
           
                </div>
             
             <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ 共 <s:property value="totalPage"/> 页 / <s:property value="totalItem"/> 条评论</li>
            	  <s:if test="page gt 1"><li><a href="adminnewsdetail.action?page=<s:property value="page-1"/>&newsid=<s:property value="newsid"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator var="p" begin="1" end="totalPage">
                  <li><a href="adminnewsdetail.action?page=<s:property value="#p"/>&newsid=<s:property value="newsid"/>" <s:if test="page eq #p">class="active"</s:if>><s:property value="#p"/></a> </li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="adminnewsdetail.action?page=<s:property value="page+1"/>&newsid=<s:property value="newsid"/>">&raquo;</a></li></s:if>
            	</ul>
             
            </section><!--end:content-->
           
        </div><!--end:container-->
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>