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
            
             
             
             
                <div class="commentf">
                	
                    <form id="commentform" action="savecomment.action" method="post">
                    	<fieldset>
                       
                        <textarea cols="25" rows="5" name="message" id="message" class="textarea">Message</textarea>
                        <br style="clear:both" />
                       
                     
                        <s:hidden name="parentid" value="%{#request.parentid}"/>
                        <s:hidden name="newsid" value="%{#request.newsid}"/>
                         <s:hidden name="page" value="%{#request.page}"/>
                        
                        <input type="submit" name="submit" class="button"  value="提交 "/>
                        </fieldset>
                    </form>
                </div><!--end:comment-->
             
            </section><!--end:content-->
          <%@include file="sidebar.jsp" %>
        </div><!--end:container-->
        
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>
