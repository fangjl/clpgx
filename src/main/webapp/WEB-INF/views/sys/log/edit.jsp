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
							<label  class="col-md-3 control-label">createDate</label>
							<div class="col-md-4">
								<input name="createDate"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">exception</label>
							<div class="col-md-4">
								<input name="exception"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">method</label>
							<div class="col-md-4">
								<input name="method"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">params</label>
							<div class="col-md-4">
								<input name="params"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">remoteAddr</label>
							<div class="col-md-4">
								<input name="remoteAddr"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">requestUri</label>
							<div class="col-md-4">
								<input name="requestUri"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">type</label>
							<div class="col-md-4">
								<input name="type"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">userAgent</label>
							<div class="col-md-4">
								<input name="userAgent"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">createBy</label>
							<div class="col-md-4">
								<input name="createBy"   placeholder="Enter text" class="form-control">
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

