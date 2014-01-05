
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN PAGE TITLE & BREADCRUMB-->
		<h3 class="page-title">
			<small>我的桌面</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group">
				<button type="button" class="btn blue dropdown-toggle"
					data-toggle="dropdown" data-hover="dropdown" data-delay="1000"
					data-close-others="true">
					<span>Actions</span> <i class="icon-angle-down"></i>
				</button>
				<ul class="dropdown-menu pull-right" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
			</li>

			<li><i class="icon-home"></i> <a href="#">首页</a>

				<i class="icon-angle-right"></i></li>
			<li><a href="#"></a></li>


		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
	<div class="col-md-12">


		<!--page-->


		<div class="tabbable tabbable-custom boxless">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tab_0">Form
						Actions</a></li>
				<li><a data-toggle="tab" href="#tab_1">列表</a></li>
				<li><a data-toggle="tab" href="#tab_2">添加</a></li>
			</ul>
			<div class="tab-content">
				<div id="tab_0" class="tab-pane active">
				</div>
				<div id="tab_2" class="tab-pane active">
				</div>
			</div>
		</div>

		<!--end-->




	</div>
</div>
<!-- END PAGE CONTENT-->