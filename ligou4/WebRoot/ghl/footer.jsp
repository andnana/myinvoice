 <%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 </div>

      <hr>

      <footer class="well">
        &copy; Strass - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
      </footer>

    </div>
							<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    </script>
    <script src="<%=basePath %>admin/js/jquery.js"></script>
	<script src="<%=basePath %>admin/js/bootstrap.min.js"></script>
	 <script src="<%=basePath %>admin/js/02.js"></script>

  </body>
</html>

