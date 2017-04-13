<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp"></jsp:include>
        <div class="span9">
          <div class="well hero-unit">
       
         <a class="uploadimgopen" style="cursor:pointer;color:blue;">上传幻灯片图片</a>
    
         <a class="slideimglistopen" style="cursor:pointer;color:blue;">已上传的幻灯片图片</a>
            <div id="uploadimg">
						
						
						<form id="uploadimgform" action="adminupload.action" method="post"
							enctype="multipart/form-data">
						描述：	<textarea name="description" id="description"></textarea>
						
							<input type="file" name="file1" />
							<input type="submit" value="确定" />
						</form>
						
						</div>
					
						<div id="slideimglist">
							
					
								  <table class="gridtableslide">
								  <tr>
											<th>幻灯片图片</th><th>描述信息</th><th>操作</th><th>上传时间</th>
										</tr>
										<s:iterator value="pics">
										<tr>
											<td><img src="<%=basePath %>/small_pic_slide/<s:property value="picname"/>"/></td>
											<td> <s:property value="description" escape="false"/> </td>
											<td><a href="deleteslideimg.action?id=<s:property value="id"/>&filename=<s:property value="picname"/>">删除</a> </td>
											<td><s:property value="adddate"/></td>
										</tr>
										</s:iterator>
								  
										</table>
								
								
								
						</div>
					
          </div>
    
		
        </div>
     <jsp:include page="footer.jsp"></jsp:include>