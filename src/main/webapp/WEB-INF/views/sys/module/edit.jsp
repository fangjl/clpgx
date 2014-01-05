<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="portlet box purple">
	<div class="portlet-title">
		<div class="caption">
			<i class="icon-reorder"></i>公司信息
		</div>
		<div class="tools">
			<a class="config" data-toggle="modal" href="#portlet-config"></a> <a
				class="reload" href="javascript:;"></a>
		</div>
	</div>
	<div class="portlet-body form">
		<!-- BEGIN FORM-->
		<form class="form-horizontal" action="#">
			<div class="form-body">
				<div class="form-group">
							<label  class="col-md-3 control-label">code</label>
							<div class="col-md-4">
								<input name="code"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">css</label>
							<div class="col-md-4">
								<input name="css"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">icon</label>
							<div class="col-md-4">
								<input name="icon"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">name</label>
							<div class="col-md-4">
								<input name="name"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">remark</label>
							<div class="col-md-4">
								<input name="remark"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">url</label>
							<div class="col-md-4">
								<input name="url"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">parent</label>
							<div class="col-md-4">
								<input name="parent"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-actions nobg fluid">
					<div class="col-md-offset-6 col-md-3">
						<button class="btn green" type="submit">提交</button>
					</div>
				</div>
		</form>
		<!-- END FORM-->
	</div>
</div>
<!-- porlet end -->

