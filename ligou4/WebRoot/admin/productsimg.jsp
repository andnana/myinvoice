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
			
			
	     
				
						<form id="uploadimgform" action="productsuploadimg.action" method="post"
							enctype="multipart/form-data">
					<div class="control-group">
						<label class="control-label" for="role">选择颜色</label>
						<div class="controls">
							<select id="colorid" name="colorid">
								
								<s:iterator value="colorSortList">
								<option value="<s:property value="id"/>"><s:property value="chinesename"/></option>
								</s:iterator>
							
							</select>
						</div>
					</div>
						<s:hidden name="id" value="%{#request.id}"></s:hidden>
							<input type="file" name="file1" />
							<input type="submit" value="确定" />
						</form>
						
						
		
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>