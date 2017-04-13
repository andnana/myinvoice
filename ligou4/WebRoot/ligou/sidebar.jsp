<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<aside class="sidebar">
          	<div class="side">
                	<h3>分类服装</h3>
                	<table>
                	<tr><td valign="top">
                	<ul id="class3" >
                
                	</ul>
                	</td>
                	<td valign="top">
                	<ul id="class2" >
               
                	</ul>
                	</td>
                	<td>
                    <ul id="class1" >
                    	<li><a href="<%=basePath %>fproductslist.action">全部</a></li>
                       <s:iterator value="sortList">
                       	<li><a href="<%=basePath %>fproductslist.action?sortid=<s:property value="id"/>"><s:property value="sortname"/></a></li>
                       </s:iterator>
                    </ul>
                    </td></tr>
                    </table>
                </div>
            	<div class="side">
                	<h3>推荐的服装</h3>
                	<s:iterator value="recommendedProductsList">
                    <div class="thumb-blog">
                     <a href="productsdetail.action?productsid=<s:property value="id" />" style="text-align:center;display:block;">
                     <img src="<%=basePath %>small_pic_products/<s:property value="imgname"/>" alt="" />
                     </a>
                    	
                        <h4>
                        <a href="productsdetail.action?productsid=<s:property value="id" />" style="text-align:center;display:block;">
                     <s:property value="productsname"/>
                     </a>
                        </h4>
                        <p><small>   <s:property value="addtime"/></small> | <small>评论: <s:property value="productsCommentList.size"/></small></p>
                    </div>
                 </s:iterator>
                </div>
            
              
              
            </aside><!--sidebar-->