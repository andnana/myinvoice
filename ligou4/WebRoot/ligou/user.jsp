<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<div id="page_wrap">
    	
        <s:debug/>
        <div class="container">
        	<section class="content">
        	username<s:property value="user.username"/>
          email<s:property value="user.email"/>
            </section><!--end:content-->
            <aside class="sidebar">
            	<div class="side">
                	<h3>推荐的服装</h3>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-1.jpg" alt=""></a>
                        <h4><a href="blog.html">代餐粉</a></h4>
                        <p><small><a href="blog.html">2016-01-13</a></small> | <small>评论: <a href="blog.html">23</a></small></p>
                    </div>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-2.jpg" alt=""></a>
                        <h4><a href="blog.html">Tips for Making Great Web Designer</a></h4>
                        <p><small><a href="blog.html">01/15/13</a></small> | <small>Comment: <a href="blog.html">10</a></small></p>
                    </div>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-2.jpg" alt=""></a>
                        <h4><a href="blog.html">Preparing For A Front-End Job Interview</a></h4>
                        <p><small><a href="blog.html">01/12/13</a></small> | <small>Comment: <a href="blog.html">17</a></small></p>
                    </div>
                </div>
            	<div class="side">
                	<h3>分类服装</h3>
                    <ul class="cat">
                    	<li><a href="#">食品</a></li>
                        <li><a href="#">数码配件</a></li>
                        <li><a href="#">HTML5</a></li>
                        <li><a href="#">CSS3</a></li>
                        <li><a href="#">PSD Tutorial</a></li>
                        <li><a href="#">Wordpress Tutorial</a></li>
                        <li><a href="#">Javascript</a></li>
                        <li><a href="#">Graphic Design</a></li>
                    </ul>
                </div>
              
              
            </aside><!--sidebar-->
        </div><!--end:container-->
       
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>