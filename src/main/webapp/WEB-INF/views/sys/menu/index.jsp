<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN PAGE HEADER-->
<div>
		 <div class="col-md-3">
                <div class="portlet blue box">
                  <div class="portlet-title">
                     <div class="caption"><i class="icon-cogs"></i>模块列表</div>
                     <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                     </div>
                  </div>
                  <div class="portlet-body">
                     <div id="MyTree6" class="tree tree-no-line tree-unselectable">
                        <div class = "tree-folder">
                           <div class="tree-folder-header">
                              <i class="icon-folder-close"></i>
                              <div class="tree-folder-name">根节点</div>
                           </div>
                           <div class="tree-folder-content"></div>
                           <div class="tree-loader">根节点</div>
                        </div>
                        <div class="tree-item">
                           <i class="tree-dot"></i>
                           <div class="tree-item-name">根节点</div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
</div>
<script type="text/javascript">

	
<!--

SysTree.init($("#MyTree6"),"${ctx}/sys/module/tree");
//-->
</script>
<!-- END PAGE CONTENT-->

