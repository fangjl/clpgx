<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}/web/company/"  ref="sysset-container-id" method="POST" class="form-horizontal">
				<input name="id"  type="hidden"  value="${ company.id}">
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fullName</label>
							<div class="col-sm-8">
								<input name="fullName"  class="form-control" value="${company.fullName}">
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-4 control-label">shortName</label>
							<div class="col-sm-8">
								<input name="shortName" class="form-control" value="${company.shortName}">
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">address</label>
							<div class="col-sm-8">
								<input name="address"  class="form-control" value="${company.address}">
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-4 control-label">netAdress</label>
							<div class="col-sm-8">
								<input name="netAdress" class="form-control" value="${company.netAdress}">
							</div>
						</div>
					</div>
				</div>
				<!-- m button-->
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/company/new" target="ajax" ref="sysset-container-id"  class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	
