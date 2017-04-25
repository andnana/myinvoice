<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="../header.jsp"></jsp:include>
<script type="text/javascript" >
var URL = window.UEDITOR_HOME_URL || "ghl/ueditor/";
</script>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>用户信息列表&nbsp;&nbsp;<small><a href="toadduser.action">添加用户信息</a></small></h1>
			</div>
	<span style="color:silver">蓝色名字为管理员</span><br />
		<table  class="gridtable">
		<tr><th>id</th><th>姓名</th><th>电话</th><th>地址</th><th>记录日期</th><th>操作</th></tr>
		
		        	<s:iterator var="user" value="userList">
        <tr><td><s:property value="id"/></td>
        <td <s:if test="issuper eq 1">class="bluefont"</s:if>> <s:if test="username.length()>6">  
     <s:property value="username.substring(0,6)+'...'" />  
 </s:if>  

 <s:else>  
      <s:property value="username" />  
 </s:else>
        <td> <s:if test="phone.length()>6">  
     <s:property value="phone.substring(0,6)+'...'" />  
 </s:if>  

 <s:else>  
      <s:property value="phone" />  
 </s:else> </td>
        <td> <s:if test="address.length()>6">  
     <s:property value="address.substring(0,6)+'...'" />  
 </s:if>  

 <s:else>  
      <s:property value="address" />  
 </s:else> </td>
        <td><s:date name="regtime" format="yyyy-MM-dd HH:mm:ss"/></td>
        <td><a href="deleteuser.action?userid=<s:property value="id"/>">删除</a>&nbsp;|&nbsp;<a href="userdetail.action?userid=<s:property value="id"/>">详细</a></td>
        </tr>    	
                	
     
			</s:iterator>   
		</table>			
			     <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="userlist.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator begin="1" end="totalPage" var="p">
                  <li <s:if test="page eq #p">class="active"</s:if>><a href="userlist.action?page=<s:property value="#p"/>"  ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="userlist.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
          
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>