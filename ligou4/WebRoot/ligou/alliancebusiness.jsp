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
        	<h2>新闻动态</h2>
            <p>最近更新的嘿哟客商城新闻动态</p>
            <span><a href="#">Get in touch</a></span>
        </div><!--end:breadcrumbs-->
        <div class="container">
        	<section class="content">
            	<article>
                	<div class="meta">
                		<span><small class="post-pic"></small><strong>07</strong><small>Jan<br>2013</small></span>
                	</div>
                	<a href="single.html" class="fadehover"><img src="images/blog/daicanfen.jpg" alt=""></a>
                    <h2><a href="single.html">代餐粉是一种什么样的食品</a></h2>
                    <ul>
                    	<li class="post">发表人: <a href="#">Admin</a></li>
                        <li class="category">分类: <a href="#">食品</a></li>
                        <li class="comment">评论: <a href="#">4</a></li>
                    </ul>
                    <p>代餐粉是一种由谷类、豆类、薯类食材等为主，其它属类植物的根、茎、果实等可食用部分为辅制成的一种单一或综合性冲调粉剂产品。
					它集营养均衡、效果显著、食用方便等优点于一身，特别是自全谷粉及有机胚芽粉面世以来，
					得到众多减肥瘦身人士的喜爱和欢迎，减肥效果特别好，无副作用。代餐粉减肥是风行于国际的一种减肥瘦身方法。
					代餐粉为国际食品法典委员会公布的《减肥用低能量配方食品标准》</p>
                    <span><a href="#">了解更多</a></span>
                </article>
                <article>
                	<div class="meta">
                		<span><small class="post-pic"></small><strong>05</strong><small>Jan<br>2013</small></span>
                	</div>
                	<a href="single.html"><img src="images/blog/blog-1-2.jpg" alt=""></a>
                    <h2><a href="single.html">Tips for Making Great Web Designer</a></h2>
                    <ul>
                    	<li class="post">Posted by: <a href="#">Admin</a></li>
                        <li class="category">Category: <a href="#">Inpirational</a></li>
                        <li class="comment">Comment: <a href="#">4</a></li>
                    </ul>
                    <p>Suspendisse rhoncus facilisis adipiscing. Vestibulum eu ligula lorem. Vivamus orci sem, consectetur ut vestibulum a, semper ac dui. Aenean tellus nisl, commodo eu aliquet ut, pulvinar ut sapien. Proin vulputate aliquam mi nec hendrerit. Sed fermentum velit vel ipsum bibendum tristique. Ut sem lacus, porttitor et aliquam eget, iaculis id lacus. Praesent sollicitudin, nibh nec mattis lobortis, dui massa eleifend magna, eget consequat risus felis dignissim ligula. </p>
                    <span><a href="#">Learn more</a></span>
                </article>
                <article>
                	<div class="meta">
                		<span><small class="post-pic"></small><strong>01</strong><small>Jan<br>2013</small></span>
                	</div>
                	<a href="single.html"><img src="images/blog/blog-1-3.jpg" alt=""></a>
                    <h2><a href="single.html">Preparing For A Front-End Job Interview</a></h2>
                    <ul>
                    	<li class="post">Posted by: <a href="#">Admin</a></li>
                        <li class="category">Category: <a href="#">Inpirational</a></li>
                        <li class="comment">Comment: <a href="#">4</a></li>
                    </ul>
                    <p>Suspendisse rhoncus facilisis adipiscing. Vestibulum eu ligula lorem. Vivamus orci sem, consectetur ut vestibulum a, semper ac dui. Aenean tellus nisl, commodo eu aliquet ut, pulvinar ut sapien. Proin vulputate aliquam mi nec hendrerit. Sed fermentum velit vel ipsum bibendum tristique. Ut sem lacus, porttitor et aliquam eget, iaculis id lacus. Praesent sollicitudin, nibh nec mattis lobortis, dui massa eleifend magna, eget consequat risus felis dignissim ligula. </p>
                    <span><a href="#">Learn more</a></span>
                </article>
                <article class="last">
                	<div class="meta">
                		<span><small class="post-pic"></small><strong>01</strong><small>Jan<br>2013</small></span>
                	</div>
                	<a href="single.html"><img src="images/blog/blog-1-4.jpg" alt=""></a>
                    <h2><a href="single.html">Starting An Open-Source Project</a></h2>
                    <ul>
                    	<li class="post">Posted by: <a href="#">Admin</a></li>
                        <li class="category">Category: <a href="#">Inpirational</a></li>
                        <li class="comment">Comment: <a href="#">4</a></li>
                    </ul>
                    <p>Suspendisse rhoncus facilisis adipiscing. Vestibulum eu ligula lorem. Vivamus orci sem, consectetur ut vestibulum a, semper ac dui. Aenean tellus nisl, commodo eu aliquet ut, pulvinar ut sapien. Proin vulputate aliquam mi nec hendrerit. Sed fermentum velit vel ipsum bibendum tristique. Ut sem lacus, porttitor et aliquam eget, iaculis id lacus. Praesent sollicitudin, nibh nec mattis lobortis, dui massa eleifend magna, eget consequat risus felis dignissim ligula. </p>
                    <span><a href="#">Learn more</a></span>
                </article>
                <ul class="pagination">
            	  <li class="page">Page 2 of 10</li>
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#" class="active">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                  <li><a href="#">last</a></li>
            	</ul>
            </section><!--end:content-->
            <aside class="sidebar">
            	<div class="side">
                	<h3>受欢迎的新闻动态</h3>
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
                	<h3>分类</h3>
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
                <div class="side">
                	<h3>Text Widget</h3>
                    <p>Cras tortor ante, lobortis sed sodales sit amet, suscipit non quam. Pellentesque convallis luctus semper. Etiam fermentum, neque a semper auctor, tortor sapien dictum mi, non congue velit ante sed sem. </p>
                </div>
                <div class="side">
                	<h3>推荐的入驻商家和合作品牌</h3>
                    <ul class="flickr">
                    	<li><a href="#"><img src="images/flickr/flickr-1.jpg" alt="" ></a></li>
                        <li><a href="#"><img src="images/flickr/flickr-2.jpg" alt="" ></a></li>
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