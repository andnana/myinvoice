<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>
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
        	<section class="content" style="float:left;width:25%;">
            
 
             
             
               
                	<s:head theme="xhtml"/>
                	
                	<sx:head parseContent="true"/>
              
                 <s:form action="register.action"  method="post"
							enctype="multipart/form-data">
  
   <s:textfield id="username" name="user.username" maxlength="20" label="用户名" />
   <s:password  id="password" name="user.pwd" maxlength="30" label="密码" />
        <s:password id="password2" name="password2" maxlength="30" label="确认密码" />   
	  	<s:textfield id="email" name="user.email" maxlength="50" label="电子邮件" />
         <s:file name="file1" id="file1" label="头像"/> 
        <s:select name="user.gender" key="男" value="'男'" list="#{'u':'保密','m ':'男','f':'女'}"
        listKey="key" listValue="value" label="性别"/>
        <s:textfield cssClass="input_text" name="user.name" id="nickname"  maxlength="10" label="昵称"/>
 		<sx:datetimepicker name="user.birthday" displayFormat="yyyy-MM-dd" label="生日" />
   <s:textfield cssClass="input_text" name="user.qq" id="qq"   maxlength="12" label="qq"/>
       <s:textfield cssClass="input_text" name="user.phone" id="mobilephone"  maxlength="12" label="手机 "/>
		
 
       
  
       
     
          
          
    </s:form>
    
           <div id="codeSubmit" style="color:silver;font-size:12px;">
           <ul style="position:relative">
           <li style="width:200px;height:35px;text-indent:51px;"><img id="code" src="createImage" alt="验证码" title="点击更换" style="height:30px;width:70px;display:inline;"/></li>
			<li  style="width:200px;height:35px;text-indent:60px;"><a id="changeCode" href="javascript:void(0)">点击更换</a></li>
           <li style="width:200px;height:35px;">验证码:<input name="code" id="codeText" style="position:absolute;left:51px;" type="text" style="width:60px"/></li>
           <li style="width:200px;height:35px;"><span id="submitSpan" style="position:absolute;left:80px;"><a href="javascript:void(0)"  id="submitbtn"  >注册</a></span></li>
           </ul>
          
		 
          
           </div>
            </section><!--end:content-->
               	 <div id="star" style="float:left;text-align:left;width:5%">
             
             <ul>
             	<li>*&nbsp;必填</li>
             	<li>*&nbsp;必填</li>
             	<li>*&nbsp;必填</li>
             	<li>*&nbsp;必填</li>
             	<li>&nbsp;&nbsp;选填 </li>
             	<li>&nbsp;&nbsp;选填</li>
             	<li>&nbsp;&nbsp;选填</li>
             	<li>&nbsp;&nbsp;选填</li>
             	<li>&nbsp;&nbsp;选填</li>
             	<li>&nbsp;&nbsp;选填</li>
             	
             </ul>
             </div> 
          <div id="tip" style="float:right;text-align:left;width:70%">
             
             <ul>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li><s:property value="%{#request.fileSizeMsg}"/><s:property value="%{request.fileExtMsg}"/></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             </ul>
             </div>   
            

        </div><!--end:container-->
        
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>