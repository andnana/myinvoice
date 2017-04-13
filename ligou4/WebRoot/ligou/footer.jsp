<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
     <footer>
    	<div id="footer_wrap">
        	<div class="one-third first">
            	<img src="<%=basePath %>ligou/images/logo-2.png" alt="">
                <p> <s:property value="commonInfo.introducecontent"/><a href="<%=basePath %>contact.action">联系我们</a></a></p>
                
            </div>
            <div class="one-third">
            	<ul class="siteinfo">
                	<li class="address">地址:	<a href="#"><s:property value="commonInfo.address"/></a></li>
                    <li class="email">电子邮件: <a href="#"><s:property value="commonInfo.email"/></a></li>
                    <li class="phone">电话: <a href="#"><s:property value="commonInfo.telephone"/></a></li>
                </ul>
             
            </div>
            <div class="one-third">
       <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            </div>
            <div class="copy">
            	<p><s:property value="commonInfo.icpnumber"/></p>
            </div>
        </div><!--end:footer_wrap-->
    </footer><!--end:footer-->
<script type="text/javascript">
$(document).ready(function() {
	$('.entry-tweet').quovolver();		
});
</script>    
</body>
</html>