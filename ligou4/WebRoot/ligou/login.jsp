<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<jsp:include page="header.jsp"></jsp:include>


	<div id="page_wrap">
    	
        <div class="container">
        <s:debug></s:debug>
        	<section class="content" style="float:left;width:25%;">
        	<s:form action="register.action"  method="post">
        <s:textfield id="loginUsername" name="username" maxlength="20" label="用户名" />
        <s:password  id="loginPassword" name="pwd" maxlength="30" label="密码" />
        </s:form>
      <div id="codeLogin" style="color:silver;font-size:12px;">
           <ul style="position:relative">
           <li style="width:200px;height:35px;text-indent:51px;"><img id="code" src="createImage" alt="验证码" title="点击更换" style="height:30px;width:70px;display:inline;"/></li>
			<li  style="width:200px;height:35px;text-indent:60px;"><a id="changeCode" href="javascript:void(0)">点击更换</a></li>
           <li style="width:200px;height:35px;">验证码:<input name="code" id="loginCodeText" style="position:absolute;left:51px;" type="text" style="width:60px"/></li>
           <li style="width:200px;height:35px;"><span id="loginSpan" style="position:absolute;left:80px;"><a href="javascript:void(0)"  id="loginBtn"  >登陆</a></span></li>
           </ul>
            </section><!--end:content-->
              <div id="loginMsg" style="float:right;text-align:left;width:70%">
             
             <ul>
             	<li></li>
             	
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             	<li></li>
             </ul>
             </div> 
             </div> 
        </div><!--end:container-->
        
    </div><!--end:page_wrap-->
    <jsp:include page="footer.jsp"></jsp:include>
   