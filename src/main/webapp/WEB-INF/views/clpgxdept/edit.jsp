<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="sysset-container-id" method="POST" class="form-horizontal">
				
				<input name="id" value="${clpgxdept.id}" type="hidden" />
				<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">code</label>
							<div class="col-sm-8">
								<input name="code" value="${clpgxdept.code}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">name</label>
							<div class="col-sm-8">
								<input name="name" value="${clpgxdept.name}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">remark</label>
							<div class="col-sm-8">
								<input name="remark" value="${clpgxdept.remark}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
			
		</div>
	</div>
	
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/web/clpgxdept" target="ajax" ref="sysset-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	
