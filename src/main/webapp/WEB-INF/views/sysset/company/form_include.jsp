<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}/web/company/"  ref="sysset-container-id" method="POST" class="form-horizontal">
			
				<div class="row">

					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">Emwwwwwwwwwwwail</label>
							<div class="col-sm-8">
								<input class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-4 control-label">Password</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" 
									placeholder="Password">
							</div>
						</div>
					</div>


					
					
				</div>
				
				
				<!-- m button-->
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/company/new" target="ajax" ref="sysset-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
				
			</form>
		</div>
	</div>
	
</div>	
	
