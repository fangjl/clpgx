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
							<label  class="col-md-3 control-label">delFlag</label>
							<div class="col-md-4">
								<input name="delFlag"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">remarks</label>
							<div class="col-md-4">
								<input name="remarks"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">updateDate</label>
							<div class="col-md-4">
								<input name="updateDate"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">description</label>
							<div class="col-md-4">
								<input name="description"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">label</label>
							<div class="col-md-4">
								<input name="label"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">sort</label>
							<div class="col-md-4">
								<input name="sort"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">type</label>
							<div class="col-md-4">
								<input name="type"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">value</label>
							<div class="col-md-4">
								<input name="value"   placeholder="Enter text" class="form-control">
							</div>
				</div>	
				<div class="form-group">
							<label  class="col-md-3 control-label">companyId</label>
							<div class="col-md-4">
								<input name="companyId"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">createBy</label>
							<div class="col-md-4">
								<input name="createBy"   placeholder="Enter text" class="form-control">
							</div>
							<label  class="col-md-3 control-label">updateBy</label>
							<div class="col-md-4">
								<input name="updateBy"   placeholder="Enter text" class="form-control">
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

