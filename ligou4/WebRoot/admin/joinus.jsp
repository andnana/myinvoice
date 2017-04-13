<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" >
var URL = window.UEDITOR_HOME_URL || "admin/ueditor/";
</script>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>招商加盟信息<small></small></h1>
			</div>
			 <a class="commoninfoform" style="cursor:pointer;color:blue;">添加信息</a>
    
         <a class="commoninfoformlist" style="cursor:pointer;color:blue;">信息列表</a>
			<div id = "commoninfoform">
			<form class="form-horizontal" action="<%=basePath %>saveJoinUsServlet" id = "commoninfoform" method="post">
				
					<fieldset>
			<!--     <div class="control-group">
						<label class="control-label" for="title">标题</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="title" name = "title" value="标题" />
						</div>
					</div>
						
					

				 	<div class="control-group">
						<label class="control-label" for="role">分类</label>
						<div class="controls">
							<select id="sort" name="sort">
								<option value="introduce" selected>公司简介</option>
								<option value="cultrue">企业文化</option>
								<option value="qualifications">公司资质</option>
							</select>
						</div>
					</div> -->	
						<div class="control-group">
						<label class="control-label" for="editor">内容</label>
						<div class="controls">
						    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>

						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="active">是否启用</label>
						<div class="controls">
							<input type="checkbox" id="active" value="1" name="active" checked />
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
											<th>公司简介内容</th><th>是否启用</th><th>操作</th>
										</tr>
								  	
					<c:forEach var="joinUs" items="${joinUsList}">					 
										<tr>
									<td>${joinUs.content }</td>
										
										
											<td>
											
											<c:choose>
											<c:when test="${joinUs.active == 1 }">
											已启用
											</c:when>
											<c:otherwise>
												已禁用
											</c:otherwise>
											</c:choose>
											</td>
											<td>
											<a href="deleteJoinUsServlet?id=${joinUs.id }">删除</a>
												|<a href="updateJoinUsActive?id=${joinUs.id }">启用</a>
																							
											 </td>
											
										</tr>
										</c:forEach>
										</table>
								
					
								
			</div>
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"></jsp:include>