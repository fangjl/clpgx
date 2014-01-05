<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="sysset-container-id" method="POST" class="form-horizontal">
				<div class="row">
			<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">createDate</label>
							<div class="col-sm-8">
								<input name="createDate"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">delFlag</label>
							<div class="col-sm-8">
								<input name="delFlag"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">remarks</label>
							<div class="col-sm-8">
								<input name="remarks"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">updateDate</label>
							<div class="col-sm-8">
								<input name="updateDate"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">address</label>
							<div class="col-sm-8">
								<input name="address"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">code</label>
							<div class="col-sm-8">
								<input name="code"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">email</label>
							<div class="col-sm-8">
								<input name="email"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fax</label>
							<div class="col-sm-8">
								<input name="fax"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">grade</label>
							<div class="col-sm-8">
								<input name="grade"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">master</label>
							<div class="col-sm-8">
								<input name="master"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">name</label>
							<div class="col-sm-8">
								<input name="name"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">parentIds</label>
							<div class="col-sm-8">
								<input name="parentIds"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">phone</label>
							<div class="col-sm-8">
								<input name="phone"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">type</label>
							<div class="col-sm-8">
								<input name="type"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">zipCode</label>
							<div class="col-sm-8">
								<input name="zipCode"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">companyId</label>
							<div class="col-sm-8">
								<input name="companyId"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">createBy</label>
							<div class="col-sm-8">
								<input name="createBy"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">updateBy</label>
							<div class="col-sm-8">
								<input name="updateBy"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">areaId</label>
							<div class="col-sm-8">
								<input name="areaId"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">parentId</label>
							<div class="col-sm-8">
								<input name="parentId"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
			
		</div>
	</div>
	
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/web/office" target="ajax" ref="sysset-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	
