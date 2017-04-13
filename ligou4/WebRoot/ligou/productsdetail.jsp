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
    	
     
        <div class="container">
        	<section class="content">
       
          
	<!-- <h3>商品信息</h3> -->
	<div class="pro_detail">
		<div class="pro_detail_left">
			<div class="jqzoom"><img src="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgList[0].imgname"/>_small<s:property value="imgList[0].suffix"/>" class="fs" alt=""  jqimg="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgList[0].imgname"/>_big<s:property value="imgList[0].suffix"/>" id="bigImg"/></div>
			<span>
                <a href="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgList[0].imgname"/>_big<s:property value="imgList[0].suffix"/>" id="thickImg" title="介绍文字" class="thickbox">
                   <img alt="点击看大图" src="<%=basePath %>ligou/images/look.gif" />
                </a>
            </span>
			<ul class="imgList">
			<s:iterator value="imgList" status="s">
				<li><img src="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgname"/><s:property value="suffix"/>" alt="" /></li>
			</s:iterator>
			
			
			</ul>
			<div class="tab">
				<div class="tab_menu">
					<ul>
						<li class="selected">产品属性</li>
						<li>产品尺码表</li>
						<li>产品介绍</li>
					</ul>
				</div>
				<div class="tab_box">
					<div>沿用风靡百年的经典全棉牛津纺面料，通过领先的液氨整理技术，使面料的抗皱性能更上一层。延续简约、舒适、健康设计理念，特推出免烫、易打理的精细免烫牛津纺长袖衬衫系列。 
					</div>
					<div class="hide">
					来自新疆无污染的生态棉花，采用紧密纺精梳棉纱，单经双纬的织造组织，造就了颗粒饱满、朴实无华、温润细腻的经典牛津纺，易洗快干、手感丰软、吸湿性好。设计师遵循布料完美肌理，立体剪裁，以直筒明门襟的经典造型、配合圆袋、曲摆的现代人性化裁减，相得益彰，浑然天成。色彩明快的纯色衬衫简洁、自然、为您营造出利落、爽朗的形象，透出热情、优雅的个性；精选白、蓝、淡粉、宽条纹、英国格等10余种明亮、经典花型，色彩缤纷呈现，以适合本季着装，更显自然、舒适境界。
                    </div>
					<div class="hide">
					世界权威德国科德宝的衬和英国高士缝纫线使成衣领型自然舒展、永不变形，缝线部位平服工整、牢固耐磨；人性化的4片式后背打褶结构设计提供更舒适的活动空间；领尖扣的领型设计戴或不戴领带风格炯同、瞬间呈现；醇正天然设计，只为彰显自然荣耀。
					</div>
				</div>
			</div>
			<div id="comment" style="margin:15px;padding:5px;">
				 <s:iterator value="productsCommentList">
                	<div class="dvision">
                	<s:property value="user.username"/>
                    	<div class="feedback">
                    	<s:if test="user.headpic != null && user.headpic.length() > 0">
                    		<img src="<%=basePath %>small_pic_head/<s:property value="user.headpic"/>" alt="">
                    	</s:if>
                    	<s:else>
                    		<img src="<%=basePath %>small_pic_head/smallheadpic.jpg" alt="">
                    	</s:else>
                        
                            <div>
                               
                                <span><s:property value="floor"/>楼&nbsp;&nbsp;<a href="#"><s:property value="addtime"/></a></span>
                                <s:property value="content" escape="false"/>
                                
                            </div>
                        </div>
                     
                     
                    </div>
                    </s:iterator>
         
           
                
             
             <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ 共 <s:property value="totalPage"/> 页 / 共 <s:property value="totalItem"/> 条评论</li>
            	  <s:if test="page gt 1"><li><a href="productsdetail.action?page=<s:property value="page-1"/>&productsid=<s:property value="productsid"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator var="p" begin="1" end="totalPage">
                  <li><a href="productsdetail.action?page=<s:property value="#p"/>&productsid=<s:property value="productsid"/>" <s:if test="page eq #p">class="active"</s:if>><s:property value="#p"/></a> </li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="productsdetail.action?page=<s:property value="page+1"/>&productsid=<s:property value="productsid"/>">&raquo;</a></li></s:if>
            	</ul>
			</div>
		</div>
		
	
          
	</div>
	
      
           
               <form action="submittext.action" method="post">
			<textarea id = "message" name="message" mce_editable="true"></textarea>
			<input id="productsid" name="productsid" type="hidden" value="<s:property value="products.id"/>"/>
			
			<input id="textbtn" type="submit" value="提交"/>
		</form>
               
             
       
	
     

           </section> <!-- end of section -->
           <div class="pro_detail_right">
			<h3><s:property value="products.productsname"/></h3>
			<p><s:property value="products.description" escape="false"/></p>
			<p><strong>现价：<s:property value="products.beforemoney"/>元  <del>原价：<s:property value="products.beforemoney"/>元</del></strong></p>
			<p><strong>编号：<s:property value="products.id"/></strong></p>
			<div class="color_change">
				颜色：<strong></strong>
				<ul>
					<input type="hidden" value="<s:property value="products.id"/>"/>
					
					<s:iterator value="imgDistinctColorNameList">
					<li><img src="<%=basePath %>admin/img/<s:property />.jpg" alt="<s:property />" /></li>
					</s:iterator>
				</ul>
			</div>
			<div class="pro_size">
				尺寸：<strong>未选择</strong> 
				<ul>
				<s:set value="products.sizeset" name="sizeset"/>
				<s:iterator  value="sizeset" var="size1">
					<li><span><s:property value="name"/></span></li>
				</s:iterator>
				
					
				</ul>
			</div>
			<div class="pro_num">
				数量：
				<select id="num_sort" style="width:40px;" >
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
			</div>
			<div class="pro_price">
				总计：<span><s:property value="products.beforemoney"/></span>元
			</div>
			<div class="pro_rating">
				给商品评分：
				<ul class="rating <s:property value="scoreSelectClass"/>">
					<li class="one"><a href="#" title="1分">1</a></li>
					<li class="two"><a href="#" title="2分">2</a></li>
					<li class="three"><a href="#" title="3分">3</a></li>
					<li class="four"><a href="#" title="4分">4</a></li>
					<li class="five"><a href="#" title="5分">5</a></li>
				</ul>
			</div>
			<div id="cart">
				<a href="#"><img src="<%=basePath %>ligou/images/btn_cart.png"/></a>
			</div>
		</div>
      <%@include file="sidebar.jsp" %>
        </div><!--end:container-->
       
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>