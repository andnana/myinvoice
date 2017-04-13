<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>网站基本信息<small></small></h1>
			</div>
			 <a class="commoninfoform" style="cursor:pointer;color:blue;">商学院信息</a>
    
         <a class="commoninfoformlist" style="cursor:pointer;color:blue;">商学院信息列表</a>
			<div id = "commoninfoform">
			<form class="form-horizontal" action="saveSchoolServlet" id = "commoninfoform" method="post">
				
					<fieldset>
					<div class="control-group">
						<label class="control-label" for="name">商学院信息标题</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="name" name = "title" value="商学院信息标题" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="content">商学院信息内容</label>
						<div class="controls">
							<textarea class="input-xlarge" id="content" name = "content" >商学院信息内容 </textarea>
						</div>
					</div>
					
				
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="提交" /> <a class="btn" href="users.html">取消</a>
					</div>					
				</fieldset>
			</form>
			</div>
			<div id="commoninfoformlist">
					
							
								
							  <table class="gridtable">
								  <tr>
											<th>商学院信息标题</th><th>商学院信息内容</th><th>操作</th>
										</tr>
								  	
					<c:forEach var="school" items="${schoollist}">					 
										<tr>
											<td>${school.title }</td>
											<td>${school.content }</td>
										
											<td><a href="deleteSchoolServlet?id=${school.id }">删除</a>
											 </td>
											
										</tr>
										</c:forEach>
										</table>
								
			
			
					
								
			</div>
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>
     	