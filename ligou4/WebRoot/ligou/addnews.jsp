<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
            
             
             
             
             
                	
                     		<form class="form-horizontal" action="savenews.action" enctype="multipart/form-data" method="post">
				
					<fieldset>
					<div class="control-group">
						<label class="control-label"  for="title">新闻动态标题</label>
						<div class="controls">
							<input type="text"  id="title" name = "news.title" value="新闻动态标题" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="content">新闻动态内容</label>
						<div class="controls">
							<textarea  id="content" name = "news.content" >新闻动态内容 </textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="file1"> 图片描述</label>
						<div class="controls">
							<input type="file" name="file1" />
						</div>
					</div>
				<!-- 	<div class="control-group">
						<label class="control-label" for="role">分类</label>
						<div class="controls">
							<select id="sortid" name="news.sortid">
								
								<s:iterator value="newsSortList">
								<option value="<s:property value="id"/>"><s:property value="sortname"/></option>
								</s:iterator>
								
							</select>
						</div>
					</div>   -->
					
				
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="提交" /> 
					</div>					
				</fieldset>
			</form>
          
              
             
            </section><!--end:content-->
          <%@include file="sidebar.jsp" %>
        </div><!--end:container-->
        
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>
