<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

	<div id="page_wrap">
    	<div class="breadcrumbs">
        	<h2>Services</h2>
            <p>Curabitur vel lobortis est. Vivamus tristique nisl sed urna commodo.</p>
            <span><a href="#">Get in touch</a></span>
        </div><!--end:breadcrumbs-->
        <div class="container">
        	<section class="content">
            	<p>Donec rutrum lacinia lectus ut bibendum. Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. Vivamus sodales mauris ut ipsum aliquam egestas. </p><br><br>
                <div class="one-half services first">
                	<img src="images/serv-audio.png" alt="">
                    <h3>Audio Editing</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services">
                	<img src="images/serv-design.png" alt="">
                    <h3>Web Design</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services first">
                	<img src="images/serv-helpsupport.png" alt="">
                    <h3>Help Support</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services">
                	<img src="images/serv-marketing.png" alt="">
                    <h3>Web Marketing</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services first">
                	<img src="images/serv-photography.png" alt="">
                    <h3>Photography</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services">
                	<img src="images/serv-video.png" alt="">
                    <h3>Video Editing</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="one-half services first">
                	<img src="images/serv-vtemplate.png" alt="">
                    <h3>V-Card Template</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
            </section><!--end:content-->
            <aside class="sidebar">
            	<div class="side">
                	<h3>Popular Post</h3>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-1.jpg" alt=""></a>
                        <h4><a href="blog.html">20 The Best Minimal Website</a></h4>
                        <p><small><a href="blog.html">01/16/13</a></small> | <small>Comment: <a href="blog.html">23</a></small></p>
                    </div>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-2.jpg" alt=""></a>
                        <h4><a href="blog.html">Tips for Making Great Web Designer</a></h4>
                        <p><small><a href="blog.html">01/15/13</a></small> | <small>Comment: <a href="blog.html">10</a></small></p>
                    </div>
                    <div class="thumb-blog">
                    	<a href="blog.html"><img src="images/blog/blog-thumb-3.jpg" alt=""></a>
                        <h4><a href="blog.html">Preparing For A Front-End Job Interview</a></h4>
                        <p><small><a href="blog.html">01/12/13</a></small> | <small>Comment: <a href="blog.html">17</a></small></p>
                    </div>
                </div>
            	<div class="side">
                	<h3>Categories</h3>
                    <ul class="cat">
                    	<li><a href="#">Web Design</a></li>
                        <li><a href="#">Inspirational</a></li>
                        <li><a href="#">HTML5</a></li>
                        <li><a href="#">CSS3</a></li>
                        <li><a href="#">PSD Tutorial</a></li>
                        <li><a href="#">Wordpress Tutorial</a></li>
                        <li><a href="#">Javascript</a></li>
                        <li><a href="#">Graphic Design</a></li>
                    </ul>
                </div>
                <div class="side">
                	<h3>Text Widget</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="side">
                	<h3>Flickr Photos</h3>
                    <ul class="flickr">
                    	<li><a href="#"><img src="images/flickr/flickr-1.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-2.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-3.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-4.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-5.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-6.jpg" alt=""></a></li>
                    </ul>
                </div>
            </aside><!--sidebar-->
        </div><!--end:container-->
    
    </div><!--end:page_wrap-->


       <jsp:include page="footer.jsp"/>
