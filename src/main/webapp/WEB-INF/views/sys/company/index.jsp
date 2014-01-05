<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- BEGIN PAGE HEADER-->
<div class="row">

	<div class="tabbable tabbable-custom boxless" id="sys_top_nav">
		<ul class="nav nav-tabs ">
				<li class="active" >
					<a data-toggle="tab" href="#tab_0">企业设置</a> 
				</li>
				<li>
					<a data-toggle="tab" href="#tab_1">机构设置</a> 
				</li>
				<li>
					<a data-toggle="tab" href="#tab_2">角色设置</a>
				</li>
				<li>
					<a data-toggle="tab" href="#tab_3">模块设置</a>
				</li>
				</ul>
				
				<div class="tab-content">
					<div id="tab_0" class="tab-pane active">
							企业设置
					</div>
					<div id="tab_1" class="tab-pane">
							机构设置
					</div>
					<div id="tab_2" class="tab-pane">
							角色设置
					</div>
					<div id="tab_3" class="tab-pane" href="${ctx}/sys/module">
							模块设置
					</div>
				</div>
	</div>
				
</div>




<!-- END PAGE CONTENT-->